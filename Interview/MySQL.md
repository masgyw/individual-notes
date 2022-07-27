[返回索引](./index.md)
# MySQL
## 自增序列满了会报错吗  
自增序列满了之后，会报主键重复的异常 Duplicate entry;
## 为什么要使用自增序列

## 为什么要使用主键  
## MySQL如何保证数据不丢失？
保证持久化redolog prepare 和 binlog ，就能在重启后，保证数据恢复  
双1配置，一次提交，等待2次刷盘
1. write binlog 是写的系统page cache，设置sync_binlog=1,binlog只要write 就fsync  
2. redo log 写入redolog buffer中，innodb_flush_log_at_trx_commit=1，直接写磁盘
## 索引类型及对数据库的影响
主键索引：特殊的唯一索引，每张表只有一个主键  
非主键索引:普通索引、唯一索引、联合索引、全文索引  
Innodb：主键索引的叶子节点，存储整行记录，又称为聚簇索引  
Innodb：非主键索引的叶子节点，存储主键值，称为非聚簇索引  
优势：
1. 可以极大的提高查询速度  

缺点：
1. 索引是数据结构，会占用存储空间
2. 修改记录时，也会更新索引，降低更新效率

## mysql索引的数据结构，各自优劣
索引的数据结构和具体存储引擎的实现有关，在MySQL中使用较多的索引有Hash索引，B+树索引等，
InnoDB存储引擎的默认索引实现为：B+树索引。对于哈希索引来说，底层的数据结构就是哈希表，因
此在绝大多数需求为单条记录查询的时候，可以选择哈希索引，查询性能最快；其余大部分场景，建议
选择BTree索引。  
- B+树是一个平衡的多叉树  
1. 根节点到每个叶子节点的高度差值不超过1
2. 同层级的节点间有指针相互链接  
- 优点：
1. B+树上的常规检索，从根节点到叶子节点的搜索效率基本相当，不会出现大幅波动
2. 基于索引的顺序扫描时，可以利用双向指针快速左右移动，效率非常高
## 索引设计原则
查询更快，占用空间更小
1. where条件或表连接字句中指定的列
2. 字段若过长，可以使用前缀索引，降低索引占用的空间
3. 小表不要建索引，增加存储空间
4. 频繁修改的字段不要建索引，会因为频繁写索引，造成性能损耗
5. 不能有效区分数据的列，重复值较多的列，不做索引（例如性别）
6. 尽量扩展索引，不新建索引
7. 大字段例如text/image/bit数据类型字段不建索引
## MySQL 的执行引擎有哪些？有什么区别？如何选择？  
| 指标 | MyISAM | Innodb | Memory |
| --- | --- | --- |---|
|是否支持事务|否|是|否|
|锁级别 | 表锁 | 行锁 | |
|全文索引|支持|不支持|不支持|
|数据总数|额外字段存储|sql查询统计||
|支持外键|不支持|支持||
|本地文件|三个：索引文件、表结构文件、数据文件|
|索引类型|非聚簇索引，索引文件存储数据文件指针|聚簇索引，索引中存储数据本身，辅助索引存储主键||

## 锁类型有哪些  
基于锁的属性分类：共享锁、排他锁。  
基于锁的粒度分类：行级锁(INNODB)、表级锁(INNODB、MYISAM)、页级锁(BDB引擎 )、记录锁、间
隙锁、临键锁。  
基于锁的状态分类：意向共享锁、意向排它锁  
- X 锁：排他锁、又称写锁；若事务 T 对数据对象 A 加上 X 锁，事务 T 可以读 A 也可以修改 A，其他事务不能再对 A 加任何锁，直到 T 释放 A 上的锁。  
- S 锁：共享锁，又称读锁；若事务T对数据对象A加上S锁，可以对A进行读但不可写，其他事务可以对A加S锁，但不能加X锁，直到S锁全部释放。  
- Gap Lock：间隙锁，锁定一个范围，但不包括记录本身。Gap 锁的目的，是为了防止同一事务的两次当前读，出现幻读的情况。（隔离级别：REAPEAT_READ）  
- next-key Lock：X+Gap，锁定一个范围，并且锁定记录本身。对于行的查询采用这种办法，可以在重复读级别，解决幻读问题。（隔离级别：REAPEAT_READ）
- 如何加行锁
	1. 共享锁：select * lock in share mode
	2. 排他锁：select * for update
	3. insert/update/delete，在事务中默认加排他锁
- 如何加表锁
```sql
SET AUTOCOMMIT=0;
LOCAK TABLES t1 WRITE, t2 READ, ...;
[do something with tables t1 and here];
COMMIT;
UNLOCK TABLES;
```
## 加锁原理  
1）行级锁不是直接锁记录，而是锁索引。
- 主键索引：锁主键索引。  
- 非主键索引：先锁非主键索引，再锁定主键索引。

## 如何解决线上死锁问题
1) 发生死锁时，查看数据库状态  
show engine innodb status;
2) 加锁原理  
3) 解决办法  

## 说说你怎么进行MySQL优化的？
几个方面：数据类型、数据表查询/修改、索引和查询  
- 数据类型优化  
保小不保大，能用少的字段就不用大的字段，目的是减少空间，增加查询速率，主键索引里有记录全量数据。  
1）数值类型  
手机号码：varchar存储，utf8，每个字符3个字节，总共需要33个字节；而用bigint 类型，只需要8个字节即可。  
IP：IP地址可以使用4个字节的int，通过INET_ATON() 函数转换，int需要是无符号的，否则会溢出。  
2）字符类型  
固定字符数的，用char；不定长的用varchar，会有1-2个字节存储长度。  
3）时间类型  
Datetime 8个字节 和Timestamp 4个字节  
区别：DateTime 到9999年；Timestamp 只能用到2038年；
- 数据表查询/修改优化  
1）主备切换：切库  
2）影子拷贝：temp表，导入数据成功后，切换原表名  
- 索引优化：针对Innodb 引擎。  
1）索引独立：不做为函数、计算的一部分  
2）前缀索引：索引的选择性（不重复数/总记录数）越高，查询效率越高。比如同一个省的身份证号。  
3）多列索引——最左原则：将选择性高的放在左侧。  
4）覆盖索引：如果索引包含指定的字段，则不会进行回表  
- 查询优化  
1）影响因素  
（1）响应时间  
（2）扫描记录行数  
（3）返回记录行数  
2）查询基础  
SQL->查询缓存
->解析器：SQL解析，词法分析、语义分析  
->预处理器：验证权限，例如列、表是否存在，是否有权限  
->执行优化器优化
->引擎执行：调用搜索引擎API获取结果  
（1）开启慢查询：set global slow_query_log=1; long_query_time=3;（s）  
（2）Explain 查询执行优化  
- 优化建议：  
优化之前，结合慢查询和Explain进行分析。  
1）Count 优化：< 比 > 执行更快。  
2）Group By 优化：在不能使用索引的情况下，使用SQL_BIG_RESULT（磁盘文件存储临时数据） 和 SQL_SMALL_RESULT（临时存储） 提升其性能。  
3）Limit 优化：通过索引过滤出数据范围，然后分页。  
- SQL慢查询的优化  
    1. 首先分析语句，看看是否load了额外的数据，可能是查询了多余的行并且抛弃掉了，可能是加载了许多结果中并不需要的列，对语句进行分析以及重写
    2. 分析语句的执行计划，然后获得其使用索引的情况，之后修改语句或者修改索引，使得语句可以尽可能的命中索引
    3. 如果对语句的优化已经无法进行，可以考虑表中的数据量是否太大，如果是的话可以进行横向或者纵向的分表
## 分库分表
[参考][1]  
大纲
> （1）为什么要分库分表（设计高并发系统的时候，数据库层面该如何设计）？用过哪些分库分表中间件？不同的分库分表中间件都有什么优点和缺点？你们具体是如何对数据库如何进行垂直拆分或水平拆分的？  
（2）现在有一个未分库分表的系统，未来要分库分表，如何设计才可以让系统从未分库分表动态切换到分库分表上？  
（3）如何设计可以动态扩容缩容的分库分表方案？  
（4）分库分表之后，id主键如何处理？
### 1、为什么要分库分表  
分库和分表是两个概念。  
单表到几百万数据，性能就会相对的差一点了，就得分表了，把一个表的数据放到多个表中，可以水平分表和垂直分表。  
一个库最多支持2000的并发，再多就一定得扩容了，最好是维护在1000的并发，可以将一个库的数据拆分到多个库中，访问时访问一个库就行了。  


### 2、用过哪些分库分表中间件？不同的分库分表中间件都有什么优点和缺点？  

| 中间件 |简介| 优点 | 缺点 |
|---|---|---|---|
|cobar|阿里b2b团队开发，proxy层方案，已经很少更新了||不活跃，不支持读写分离，存储过程，跨库join和分页等|
|TDDL|淘宝团队开发，client层方案|支持读写分离|不支持join/多表查询，依赖淘宝的diamond管理系统|
|atlas|360开源，proxy层||社区不更新了|
|sharding-jdbc|当当开源，client层方案，支持分库分表/读写分离/分布式id/柔性事务（最大努力/TCC）|不用部署，运维成本低|和系统高度耦合，如果更新，影响大|
|mycat|基于cobar改造，proxy层|需要部署，运维成本高|和系统解耦，运行透明，便于升级|

### 3、具体是如何对数据库如何进行垂直拆分或水平拆分的？  
- 水平拆分的意义：就是将数据均匀放更多的库里，然后用多个库来抗更高的并发，还有就是用多个库的存储容量来进行扩容。  
- 垂直拆分的意义：就是把一个有很多字段的表给拆分成多个表，或者是多个库上去。每个库表的结构都不一样，每个库表都包含部分字段。一般来说，会将较少的访问频率很高的字段放到一个表里去，然后将较多的访问频率很低的字段放到另外一个表里去。因为数据库是有缓存的，你访问频率高的行字段越少，就可以在缓存里缓存更多的行，性能就越好。这个一般在表层面做的较多一些。  
- 你的项目里该如何分库分表？  
一般来说，垂直拆分，你可以在表层面来做，对一些字段特别多的表做一下拆分；水平拆分，你可以说是并发承载不了，或者是数据量太大，容量承载不了，你给拆了，按什么字段来拆，你自己想好；  
分表，你考虑一下，你如果哪怕是拆到每个库里去，并发和容量都ok了，但是每个库的表还是太大了，那么你就分表，将这个表分开，保证每个表的数据量并不是很大。  
而且这儿还有两种分库分表的方式，一种是按照range来分，就是每个库一段连续的数据，这个一般是按比如时间范围来的，但是这种一般较少用，因为很容易产生热点问题，大量的流量都打在最新的数据上了；或者是按照某个字段hash一下均匀分散，这个较为常用。  
range来分，好处在于说，后面扩容的时候，就很容易，因为你只要预备好，给每个月都准备一个库就可以了，到了一个新的月份的时候，自然而然，就会写新的库了；缺点，但是大部分的请求，都是访问最新的数据。实际生产用range，要看场景，你的用户不是仅仅访问最新的数据，而是均匀的访问现在的数据以及历史的数据。  
hash分法，好处在于说，可以平均分配没给库的数据量和请求压力；坏处在于说扩容起来比较麻烦，会有一个数据迁移的这么一个过程  
1. 不停机迁移方案  
如何从一个未分库分表的系统，到分库分表的系统。  
停机迁移：  
1）停机，系统不允许访问  
2）导数工具一次性将单表数据，通过数据库中间件，将数据分发到分库分表  
3）导数完成之后，修改系统的配置，将系统连接到分库分表上  
双写迁移方案：  
1）双写：系统中所有对老库增删改的地方，新增对新库的增删改  
2）导数：用导数工具将旧库数据导入到新库，根据更新时间字段判断，除非读出来的数据在新库没有，或者数据比新库新，才会写  
3）比对：一轮导数之后，比对新旧数据，如果有不一致的且老库数据新，就将数据导入新库，反复循环，直到两个库完全一致  
4）迁移：两个库完全一致了，基于分库分表的代码，重新部署一次，就是基于分库分表了，不用停机  
2. 如何设计分库分表扩容方案  
主旨：只增加数据库服务器数量，分库分表数量不变，避免数据迁移。  
例如：初始分库分表为16 * 16 ，16个库，每个库16个分表。
两台服务器：8库/台，8*16表/台；
扩容：2台-》4库，每台4库；4-》8，每台2库，最多扩容到16台服务器。  
路由规则：
1）唯一标识 % 16 取模，获得库序号
2）唯一标识 / 16 % 16 取模，获取表序号  
优势：
1）扩容时，机器增加一倍  
2）整库迁移到新的机器  
3）代码修改配置，调整迁移的库所在的数据库服务器地址  
4）重新发布系统，上线，原路由规则不变，直接可以基于2倍的机器线上提供服务，性能提供一倍  
### 4、全局ID 生成策略  

|方案|说明|适合场景|优点|缺点|
|---|---|---|---|---|
|数据库自增ID|可以提供一个id生成服务，基于自增ID返回一批id，id用完后使用下一批|并发不高，数据量很大的情况，分库分表只为存储海量数据|简单|依赖数据库的性能，高并发场景下，性能差|
|uuid||随机生成文件名、编号之类的|方便|字符太长且无意义，不适合做数据库主键|
|获取系统时间||将时间和当前业务字段拼接起来，如果可以接受业务消息外漏，是可以使用的|方便简单|高并发场景下，时间会存在重复的情况|
|snowflake算法|雪花算法，twitter开源的分布式算法，64位long型id，1bit不用，41bit做毫秒数（69年），10bit作为工作机器id（5bit机房+5bit机器，1024台机器），12bit 作为序列号（4096个序号）|适合大部分场景|||
### 5、Mysql 读写分离的原理？主从复制的延迟如何解决？  
- 为什么要读写分离？  
一般情况下，读会先从缓存中读取，缓存中没有（新建数据，缓存还未同步；缓存满了LRU，删除了），会从数据库中读出来，并存到缓存中。  
高并发的场景下，会有大量请求在缓存中查询不到，而来到数据库中，常规单机Mysql数据库最多支持2000/s，导致数据库性能迅速下降。  
常规的做法是读写分离，主库写数据，从库读数据，主库同步数据给从库，主从库分别在不同的服务器上，扩展读请求。  
- 怎么实现读写分离  
原生Mysql 就支持主从复制机制  
- Mysql主从复制  
a.基本原理   
I）mysql binlog 日志：增删改的操作，会写入binlog日志文件  
II）主库从库通过socket长连接通信，主库中有一个线程专门服务于该长连接  
III）从库拉取数据到本地relay日志，单线程读取
线上压测，主从库的延迟主要看主库的写并发，主库的写并发高达1000/s，延迟在几ms；写并发高达2000/s，从库延时大概在几十毫秒；再高，延时就会有几秒了。  
b.主从延迟问题产生原因  
从库单线程重放relaylog，高并发，数据量大的情况下，数据有延迟  
c.数据丢失问题，半同步复制机制（semi-sync）
设置semi-sync参数，主库写入binlog 之后，强制此时立即将数据同步到从库，从库将数据写入到relaylog之后，返回ack消息给主库，主库此时才算数据写入成功。  
d.并行复制原理，多库并发重放relay日志，缓解主从延迟问题  
- 主从延迟导致的生产问题，如何解决  
业务逻辑：insert -> select -> update, 更新内容为空。  
方案一：并行复制，但是意义不大，28法则，某些库的写并发很高  
方案二：拆主库，降低写并发  
方案三：重写代码，插入数据后，直接更新，因为在主库操作
方案四：插入数据，要求立刻读取，可以直连主库。不推荐做，读写分离的意义就不存在了。  
- 读写分离带来的问题  
1）客户端连接问题：直连/proxy  
2）主备延迟过期读：读到事务更新前的状态  
解决方案：
	1. 强制读主库：读写分离的优势就无了
	2. sleep方案：读从库前，sleep 1s，不靠谱
	3. 判断主备库无延迟方案：
		- show slave status + MBS
		- 对比主库和从库日志位点，相同则无延迟
		- 对比全局事务ID是否一致
	4. semi-sync半同步复制：master写成功，发binlog给从库，从库需要返回ack，才算成功；缺点：过度等待

### 6、分表后非sharding_key的查询怎么处理，分表后的排序？
1. 做一个mapping表，不带user_id的查询，先通过映射关系表查到user_id，再通过user_id查询；
2. 数据量不是很大，多线程扫表，整合结果
3. 数据实时要求不高的话，可以做一张宽表，同步到类似es中，提供查询服务  
分表后的排序
- 排序是唯一索引
    1. 第一页的查询：将各表结果集进行合并，然后再排序
    2. 第二页查询：传入上一页最后值和排序方式
    3. 根据排序方式和最后值，完成SQL的范围条件查询，结果集合并、排序
- 排序非唯一索引
    1. 第一页查询：将各表结果集进行合并，然后再排序
    2. 第二页查询：传入上一页最后值和排序方式，以及唯一标识字段
    3. 根据排序字段和最后值，完成范围查询sql union 等值查询sql，然后通过唯一标识字段去除非上一页的数据，最后结果集合并、排序


## 请详细描述从数据库连接池中获取一个连接资源的过程？

## ACID靠什么保证的
- A原子性：由undo log日志保证，它记录了需要回滚的日志信息，事务回滚时撤销已经执行成功的sql
- C一致性：由其他三大特性保证、程序代码要保证业务上的一致性
- I隔离性：由MVCC（多版本并发控制）来保证，读取数据时通过一种类似快照的方式将数据保存下来，这样读锁就和写锁不冲突了，不同的事务session会看到自己特定版本的数据，版本链
- D持久性：由内存+redo log来保证，mysql修改数据同时在内存和redo log记录这次操作，宕机的时候可
以从redo log恢复  
InnoDB redo log 写盘，InnoDB 事务进入 prepare 状态。
如果前面 prepare 成功，binlog 写盘，再继续将事务日志持久化到 binlog，如果持久化成功，那么
InnoDB 事务则进入 commit 状态(在 redo log 里面写一个 commit 记录)  
redolog的刷盘会在系统空闲时进行

## 什么是MVCC
多版本并发控制  
聚簇索引记录中有两个必要的隐藏列：  
trx_id：用来存储每次对某条聚簇索引记录进行修改的时候的事务id。  
roll_pointer：每次对哪条聚簇索引记录有修改的时候，都会把老版本写入undo日志中。这个roll_pointer就是存了一个指针，它指向这条聚簇索引记录的上一个版本的位置，通过它来获得上一个
版本的记录信息。(注意插入操作的undo日志没有这个属性，因为它没有老版本)  
已提交读和可重复读的区别就在于它们生成ReadView的策略不同

## Mysql 执行计划怎么看
1. id ：是一个有顺序的编号，是查询的顺序号，有几个 select 就显示几行。id的顺序是按 select 出现
的顺序增长的。id列的值越大执行优先级越高越先执行，id列的值相同则从上往下执行，id列的值为
NULL最后执行。
2. selectType 表示查询中每个select子句的类型
	SIMPLE： 表示此查询不包含 UNION 查询或子查询
	PRIMARY： 表示此查询是最外层的查询（包含子查询）
	SUBQUERY： 子查询中的第一个 SELECT
	UNION： 表示此查询是 UNION 的第二或随后的查询
	DEPENDENT UNION： UNION 中的第二个或后面的查询语句, 取决于外面的查询
	UNION RESULT, UNION 的结果
	DEPENDENT SUBQUERY: 子查询中的第一个 SELECT, 取决于外面的查询. 即子查询依赖于外层查
	询的结果.
	DERIVED：衍生，表示导出表的SELECT（FROM子句的子查询）
3.table：表示该语句查询的表
4.type：优化sql的重要字段，也是我们判断sql性能和优化程度重要指标。他的取值类型范围：
	const：通过索引一次命中，匹配一行数据
	system: 表中只有一行记录，相当于系统表；
	eq_ref：唯一性索引扫描，对于每个索引键，表中只有一条记录与之匹配
	ref: 非唯一性索引扫描,返回匹配某个值的所有
	range: 只检索给定范围的行，使用一个索引来选择行，一般用于between、<、>；
	index: 只遍历索引树；
	ALL: 表示全表扫描，这个类型的查询是性能最差的查询之一。 那么基本就是随着表的数量增多，执行效率越慢。
执行效率：
ALL < index < range< ref < eq_ref < const < system。最好是避免ALL和index
5.possible_keys：它表示Mysql在执行该sql语句的时候，可能用到的索引信息，仅仅是可能，实际不一定会用到。
6.key：此字段是 mysql 在当前查询时所真正使用到的索引。 他是possible_keys的子集
7.key_len：表示查询优化器使用了索引的字节数，这个字段可以评估组合索引是否完全被使用，这也是
我们优化sql时，评估索引的重要指标
9.rows：mysql 查询优化器根据统计信息，估算该sql返回结果集需要扫描读取的行数，这个值相关重要，
索引优化之后，扫描读取的行数越多，说明索引设置不对，或者字段传入的类型之类的问题，说明要优化空间越大
10.filtered：返回结果的行占需要读到的行(rows列的值)的百分比，就是百分比越高，说明需要查询到数据越准确，百分比越小，说明查询到的数据量大，而结果集很少
11.extra
	using filesort ：表示 mysql 对结果集进行外部排序，不能通过索引顺序达到排序效果。一般有
	using filesort都建议优化去掉，因为这样的查询 cpu 资源消耗大，延时大。
	using index：覆盖索引扫描，表示查询在索引树中就可查找所需数据，不用扫描表数据文件，往往说明性能不错。
	using temporary：查询有使用临时表, 一般出现于排序， 分组和多表 join 的情况， 查询效率不高，建议优化。
	using where ：sql使用了where过滤,效率较高

## 怎么判断数据库有问题
数据库不可用的判断方法
1. select 1:不准确，无法检测并发线程过多造成的不可用
2. 查表检测：在数据库里新增单行记录的单表，定期查询，可以检测并发线程不可用问题；缺点：磁盘满，binlog无法写入，导致更新失败
3. 更新检测：数据库中加一个时间戳，每次更新当前的时间戳，加上serverId避免主从同步，行冲突  
总结：普通使用方案1，好的方式使用更新检测，但是损耗性能

## 删库跑路
1. delete 删除
	- 事前
		1. sql_safe_update=0，更新必须带条件
		2. 代码上线前，必须审核
	- 事中
		1. binlog_format=row && binlog_row_image=full
		2. 修改binlog，反向操作，数据库重放
	- 事后
2. drop 数据表/库
	- 事前
		1. 账号分离
		2. 账号权限级别
	- 事中
		1. 全量日志+增量日志恢复
		2. 延迟备库策略

## 查大量数据为什么不会把数据库内存打爆
1. 边算边发的逻辑，server端将查询到的一部分结果集发送客户端，客户端读取不及时，server会阻塞
2. Innodb采用的是LRU算法，淘汰内存，而不会导致内存过大

## 到底可不可以join
1. 被驱动表有索引，使用join是没问题的
2. 无索引，尤其大表上join，会导致大表多次全表扫描，占用大量系统资源，不推荐
3. 非要使用join，使用小表驱动
4. 优化方式
	- 添加索引：走索引
	- BKA：批量key访问比较，比BNL算法胜在批量上
	- 临时表：先过滤成较小的结果集，然后join
	- 代码上，使用hash-join

## 临时表
- 概念
	1. 和session相关，对其他session 不可见
	2. 长链接，需要手动删除临时表
- 使用场景
	1. union：去重
	2. group by
- 优化
	1. group by 没有排序要求，加上ordery by null
	2. group by 尽量使用索引，explain 判断是否使用临时表或文件排序
	3. group by 数据量大，使用优先级：Temprory >> fileSort

## 自增主键为什么不是连续的
1. 唯一键冲突
2. 事务回滚
3. 批量申请id策略：不回退ID


***
[1]: https://mp.weixin.qq.com/s/9rREHjpgXli0Sr5CJuZ5ZQ