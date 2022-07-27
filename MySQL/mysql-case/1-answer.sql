参考网站：
https://zhuanlan.zhihu.com/p/43289968

1.查询课程编号为“01”的课程比“02”的课程成绩高的所有学生的学号（重点）
方法一：
select t1.s_id,t2.s_score as f1_score,t3.s_score as f2_score from student t1
LEFT JOIN (SELECT s_id, c_id, s_score from score where c_id = '01') t2
on t1.s_id = t2.s_id
left JOIN (select s_id, c_id,s_score from score where c_id='02') t3
on t1.s_id=t3.s_id
where t2.s_score > t3.s_score;
方法二：
select t1.s_id from student t1
where t1.s_id in (
select t3.s_id from (select s_id, s_score from score where c_id ='01') t3
LEFT JOIN (select s_id,s_score from score where c_id = '02') t4
on t3.s_id = t4.s_id
where t3.s_score > t4.s_score or t4.s_id is null
)

2、查询平均成绩大于60分的学生的学号和平均成绩（简单，第二道重点）
select s_id, avg(s_score) as avg_s from (
select t1.s_id , t1.s_name, t2.s_score  from student t1 right JOIN score t2
on t1.s_id = t2.s_id
) t3
GROUP BY s_id
having avg(t3.s_score) > 60

相似的：查询平均成绩小于60分的学生的学号和平均成绩（包含无成绩的）
select s_id, avg(ifnull(s_score,0)) as avg_s from (
select t1.s_id , t1.s_name, t2.s_score  from student t1 right JOIN score t2
on t1.s_id = t2.s_id
) t3
GROUP BY s_id
having avg(t3.s_score) is null or avg(t3.s_score) < 60

3、查询所有学生的学号、姓名、选课数、总成绩
select t1.s_id, t1.s_name, ifnull(t2.c_cnt,0) c_cnt, ifnull(t2.total_score, 0) total_score from student t1
LEFT JOIN (select s_id, count(DISTINCT c_id) as c_cnt, sum(s_score) as total_score from score group by s_id) t2
on t1.s_id = t2.s_id;

4、查询姓“猴”的老师的个数（不重要）
select count(*) as cnt from teacher where t_name like '猴%';

5、查询没学过“张三”老师课的学生的学号、姓名（重点）
select * from student where s_id not in (
SELECT t3.s_id from course t1 inner JOIN teacher t2 on t1.t_id = t2.t_id
inner JOIN score t3 on t1.c_id =t3.c_id
WHERE t2.t_name = '张三'
)
;

6、查询学过“张三”老师所教的所有课的同学的学号、姓名
select * from student where s_id in (
SELECT t3.s_id from course t1 inner JOIN teacher t2 on t1.t_id = t2.t_id
inner JOIN score t3 on t1.c_id =t3.c_id
WHERE t2.t_name = '张三'
)
;

7、查询学过编号为“01”的课程并且也学过编号为“02”的课程的学生的学号、姓名（重点）
select * from student where s_id in (
select t1.s_id from
(select s_id from score where c_id='01') t1 INNER JOIN (select s_id from score where c_id='02') t2
on t1.s_id = t2.s_id
);
或
select * from student where s_id in (
select s_id from score where c_id='01')
and s_id in (
select s_id from score where c_id='02');

9、查询所有课程成绩小于60分的学生的学号、姓名
select t1.s_id,s_name from student t1 inner JOIN (
select s_id from score
group by s_id
having max(s_score) < 60
) t2 on t1.s_id=t2.s_id

10.查询没有学全所有课的学生的学号、姓名(重点)
SELECT t1.s_id, t1.s_name from student t1 INNER JOIN score t2
on t1.s_id = t2.s_id
group by t1.s_id,t1.s_name
HAVING count(c_id) < (select count(DISTINCT c_id) from course)

11、查询至少有一门课与学号为“01”的学生所学课程相同的学生的学号和姓名（重点）
select DISTINCT t1.s_id,s_name from student t1 INNER JOIN score t2 on t1.s_id=t2.s_id
where t2.c_id in (
select c_id from score where s_id = '01') and t1.s_id != '01';

12.查询和“01”号同学所学课程完全相同的其他同学的学号(重点)
SELECT t1.s_id,t2.s_name from score t1 inner join student t2 on t1.s_id=t2.s_id
GROUP BY t1.s_id,t2.s_name having count(t1.c_id) = (select count(c_id) from score where s_id='01')
and t1.s_id != '01';

13、查询没学过"张三"老师讲授的任一门课程的学生姓名
select * from student where s_id not in (
select t3.s_id from score t3 inner join course t1 on t3.c_id=t1.c_id INNER JOIN teacher t2 on t1.t_id = t2.t_id
where t2.t_name = '张三')

15、查询两门及其以上不及格课程的同学的学号，姓名及其平均成绩（重点）
select t2.s_id,t2.s_name,avg(t1.s_score) avg_score from score t1 INNER JOIN student t2 on t1.s_id=t2.s_id
where t1.s_score < 60
group by t2.s_id,t2.s_name
having count(c_id) >= 2;

16、检索"01"课程分数小于60，按分数降序排列的学生信息
select t2.* from score t1 INNER JOIN student t2 on t1.s_id=t2.s_id
where t1.c_id='01' and t1.s_score < 60
order by t1.s_score desc;

17、按平均成绩从高到低显示所有学生的所有课程的成绩以及平均成绩
select s_id,
max(case when c_id='01' then s_score else null end) as yuwen,
max(case when c_id='02' then s_score else null end) as shuxue,
max(case when c_id='03' then s_score else null end) as yinyu,
avg(s_score)
 from score t1
group by s_id
ORDER BY avg(s_score) desc;

18.查询各科成绩最高分、最低分和平均分：
以如下形式显示：课程ID，课程name，最高分，最低分，平均分，及格率，中等率，优良率，优秀率
--及格为>=60，中等为：70-80，优良为：80-90，优秀为：>=90 (超级重点)
select c_id,max(s_score) max_s,min(s_score) min_s,avg(s_score) avg_s,
avg(if(s_score>=60 and s_score<70,1,0)) jg_cnt,
avg(if(s_score>=70 and s_score<80,1,0)) zd_cnt,
avg(if(s_score>=80 and s_score<90,1,0)) yl_cnt,
avg(if(s_score>=90,1,0)) yx_cnt from score t1
group by c_id

19、按各科成绩进行排序，并显示排名(重点row_number)

35、查询所有学生的课程及分数情况

40、查询选修“张三”老师所授课程的学生中成绩最高的学生姓名及其成绩
select t1.* from score t1 INNER JOIN course t2 on t1.c_id=t2.c_id INNER JOIN teacher t3 on t2.t_id=t3.t_id
where t3.t_name='张三'
order by t1.s_score desc
limit 1;

41.查询不同课程成绩相同的学生的学生编号、课程编号、学生成绩 （重点）
select s_id,c_id,t2.s_score from score t2 inner join (
select s_score from score t1
group by s_score
having count(DISTINCT c_id) >=2) t3
on t2.s_score=t3.s_score;