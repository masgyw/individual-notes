#### 1. 本地手动添加jar

mvn install:install-file -DgroupId={com.oracle} -DartifactId={ojdbc7} -Dversion={12.1.0.1} -Dpackaging=jar -Dfile=ojdbc7.jar -DgeneratePom=true