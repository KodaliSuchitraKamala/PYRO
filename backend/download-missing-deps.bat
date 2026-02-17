@echo off
echo Downloading missing Spring Data dependencies...

curl -o lib/spring-data-commons-3.2.0.jar https://repo.maven.apache.org/maven2/org/springframework/data/spring-data-commons/3.2.0/spring-data-commons-3.2.0.jar
curl -o lib/spring-data-repository-3.2.0.jar https://repo.maven.apache.org/maven2/org/springframework/data/spring-data-repository/3.2.0/spring-data-repository-3.2.0.jar
curl -o lib/spring-aop-6.1.5.jar https://repo.maven.apache.org/maven2/org/springframework/spring-aop/6.1.5/spring-aop-6.1.5.jar
curl -o lib/spring-aspects-6.1.5.jar https://repo.maven.apache.org/maven2/org/springframework/spring-aspects/6.1.5/spring-aspects-6.1.5.jar
curl -o lib/slf4j-api-2.0.9.jar https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/2.0.9/slf4j-api-2.0.9.jar

echo Missing dependencies downloaded!
echo Now run: compile-and-run.bat
