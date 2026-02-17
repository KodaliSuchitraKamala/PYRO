@echo off
echo Removing corrupted JAR...
del lib\spring-data-repository-3.2.0.jar 2>nul

echo Trying Maven approach...
set JAVA_HOME=C:\Program Files\Java\jdk-25
set PATH=%JAVA_HOME%\bin;%PATH%

echo Running with Maven...
.\mvnw.cmd spring-boot:run

echo If Maven fails, trying manual compile...
javac -cp "lib\*" -d . src\*.java
if %ERRORLEVEL% EQU 0 (
    echo Compilation successful!
    java -cp ".;lib\*" com.todo.TodoApp
) else (
    echo Compilation failed
)
