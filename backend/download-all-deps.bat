@echo off
echo Downloading all required Spring Boot dependencies...

curl -o lib/spring-boot-3.2.0.jar https://repo.maven.apache.org/maven2/org/springframework/boot/spring-boot/3.2.0/spring-boot-3.2.0.jar
curl -o lib/spring-boot-autoconfigure-3.2.0.jar https://repo.maven.apache.org/maven2/org/springframework/boot/spring-boot-autoconfigure/3.2.0/spring-boot-autoconfigure-3.2.0.jar
curl -o lib/spring-boot-starter-web-3.2.0.jar https://repo.maven.apache.org/maven2/org/springframework/boot/spring-boot-starter-web/3.2.0/spring-boot-starter-web-3.2.0.jar
curl -o lib/spring-boot-starter-data-jpa-3.2.0.jar https://repo.maven.apache.org/maven2/org/springframework/boot/spring-boot-starter-data-jpa/3.2.0/spring-boot-starter-data-jpa-3.2.0.jar
curl -o lib/spring-boot-starter-3.2.0.jar https://repo.maven.apache.org/maven2/org/springframework/boot/spring-boot-starter/3.2.0/spring-boot-starter-3.2.0.jar
curl -o lib/spring-web-6.1.5.jar https://repo.maven.apache.org/maven2/org/springframework/spring-web/6.1.5/spring-web-6.1.5.jar
curl -o lib/spring-webmvc-6.1.5.jar https://repo.maven.apache.org/maven2/org/springframework/spring-webmvc/6.1.5/spring-webmvc-6.1.5.jar
curl -o lib/spring-context-6.1.5.jar https://repo.maven.apache.org/maven2/org/springframework/spring-context/6.1.5/spring-context-6.1.5.jar
curl -o lib/spring-data-jpa-3.2.0.jar https://repo.maven.apache.org/maven2/org/springframework/data/spring-data-jpa/3.2.0/spring-data-jpa-3.2.0.jar
curl -o lib/spring-orm-6.1.5.jar https://repo.maven.apache.org/maven2/org/springframework/spring-orm/6.1.5/spring-orm-6.1.5.jar
curl -o lib/spring-tx-6.1.5.jar https://repo.maven.apache.org/maven2/org/springframework/spring-tx/6.1.5/spring-tx-6.1.5.jar
curl -o lib/spring-core-6.1.5.jar https://repo.maven.apache.org/maven2/org/springframework/spring-core/6.1.5/spring-core-6.1.5.jar
curl -o lib/spring-beans-6.1.5.jar https://repo.maven.apache.org/maven2/org/springframework/spring-beans/6.1.5/spring-beans-6.1.5.jar
curl -o lib/spring-expression-6.1.5.jar https://repo.maven.apache.org/maven2/org/springframework/spring-expression/6.1.5/spring-expression-6.1.5.jar
curl -o lib/jakarta.persistence-api-3.1.0.jar https://repo.maven.apache.org/maven2/jakarta/persistence/jakarta.persistence-api/3.1.0/jakarta.persistence-api-3.1.0.jar
curl -o lib/jakarta.annotation-api-2.1.1.jar https://repo.maven.apache.org/maven2/jakarta/annotation/jakarta.annotation-api/2.1.1/jakarta.annotation-api-2.1.1.jar
curl -o lib/jakarta.servlet-api-6.0.0.jar https://repo.maven.apache.org/maven2/jakarta/servlet/jakarta.servlet-api/6.0.0/jakarta.servlet-api-6.0.0.jar
curl -o lib/h2-2.2.224.jar https://repo.maven.apache.org/maven2/com/h2database/h2/2.2.224/h2-2.2.224.jar
curl -o lib/hibernate-core-6.4.1.Final.jar https://repo.maven.apache.org/maven2/org/hibernate/orm/hibernate-core/6.4.1.Final/hibernate-core-6.4.1.Final.jar
curl -o lib/jackson-core-2.15.3.jar https://repo.maven.apache.org/maven2/com/fasterxml/jackson/core/jackson-core/2.15.3/jackson-core-2.15.3.jar
curl -o lib/jackson-databind-2.15.3.jar https://repo.maven.apache.org/maven2/com/fasterxml/jackson/core/jackson-databind/2.15.3/jackson-databind-2.15.3.jar
curl -o lib/jackson-annotations-2.15.3.jar https://repo.maven.apache.org/maven2/com/fasterxml/jackson/core/jackson-annotations/2.15.3/jackson-annotations-2.15.3.jar

echo All dependencies downloaded!
echo Now run: compile-and-run.bat
