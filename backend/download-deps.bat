@echo off
echo Creating lib directory...
if not exist lib mkdir lib

echo Downloading Spring Boot dependencies...
curl -o lib/spring-boot-starter-web-3.2.0.jar https://repo.maven.apache.org/maven2/org/springframework/boot/spring-boot-starter-web/3.2.0/spring-boot-starter-web-3.2.0.jar
curl -o lib/spring-boot-starter-data-jpa-3.2.0.jar https://repo.maven.apache.org/maven2/org/springframework/boot/spring-boot-starter-data-jpa/3.2.0/spring-boot-starter-data-jpa-3.2.0.jar
curl -o lib/h2-2.2.224.jar https://repo.maven.apache.org/maven2/com/h2database/h2/2.2.224/h2-2.2.224.jar
curl -o lib/spring-boot-3.2.0.jar https://repo.maven.apache.org/maven2/org/springframework/boot/spring-boot/3.2.0/spring-boot-3.2.0.jar

echo Dependencies downloaded!
echo Now run: compile-and-run.bat
