Проект java_project
![image](https://github.com/alexgithubber09/simple-java-maven-app/assets/141560314/6efde109-f9e1-4e98-ba48-09be08cb4096)

Создан 1 агент под названием docker
![image](https://github.com/alexgithubber09/simple-java-maven-app/assets/141560314/de2c246d-5c51-429c-b4d5-b61a592402a4)

Вывод процесса сборки, запущенной на агенте:

Started by user test
Obtained jenkins/Jenkinsfile from git https://github.com/alexgithubber09/simple-java-maven-app.git
[Pipeline] Start of Pipeline
[Pipeline] node
Running on docker in /home/test/workspace/java_project
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Declarative: Checkout SCM)
[Pipeline] checkout
Selected Git installation does not exist. Using Default
The recommended git tool is: NONE
using credential 79c95f9c-f298-407e-a770-619bbd63c256
Fetching changes from the remote Git repository
Checking out Revision ff0835ad61ea789a6eb6892ffdca11723bb9f480 (refs/remotes/origin/master)
Commit message: "Delete Dockerfile"
 > git rev-parse --resolve-git-dir /home/test/workspace/java_project/.git # timeout=10
 > git config remote.origin.url https://github.com/alexgithubber09/simple-java-maven-app.git # timeout=10
Fetching upstream changes from https://github.com/alexgithubber09/simple-java-maven-app.git
 > git --version # timeout=10
 > git --version # 'git version 2.39.3'
using GIT_SSH to set credentials 
[INFO] Currently running in a labeled security context
[INFO] Currently SELinux is 'enforcing' on the host
 > /usr/bin/chcon --type=ssh_home_t /home/test/workspace/java_project@tmp/jenkins-gitclient-ssh13574622652768537229.key
Verifying host key using known hosts file
You're using 'Known hosts file' strategy to verify ssh host keys, but your known_hosts file does not exist, please go to 'Manage Jenkins' -> 'Security' -> 'Git Host Key Verification Configuration' and configure host key verification.
 > git fetch --tags --force --progress -- https://github.com/alexgithubber09/simple-java-maven-app.git +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git rev-parse refs/remotes/origin/master^{commit} # timeout=10
 > git config core.sparsecheckout # timeout=10
 > git checkout -f ff0835ad61ea789a6eb6892ffdca11723bb9f480 # timeout=10
 > git rev-list --no-walk ff0835ad61ea789a6eb6892ffdca11723bb9f480 # timeout=10
[Pipeline] }
[Pipeline] // stage
[Pipeline] withEnv
[Pipeline] {
[Pipeline] isUnix
[Pipeline] withEnv
[Pipeline] {
[Pipeline] sh
+ docker inspect -f . maven:3.9.0
.
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] withDockerContainer
docker does not seem to be running inside a container
$ docker run -t -d -u 1000:1000 -v /root/.m2:/root/.m2 -w /home/test/workspace/java_project -v /home/test/workspace/java_project:/home/test/workspace/java_project:rw,z -v /home/test/workspace/java_project@tmp:/home/test/workspace/java_project@tmp:rw,z -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** -e ******** maven:3.9.0 cat
$ docker top 1c322a52f03643d723e0e5c2acc81c0b7e17cb2b00417c04be792ecae849aeb4 -eo pid,comm
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Build)
[Pipeline] sh
+ mvn -B -DskipTests clean package
[INFO] Scanning for projects...
[INFO] 
[INFO] ----------------------< com.mycompany.app:my-app >----------------------
[INFO] Building my-app 1.0
[INFO]   from pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- clean:3.2.0:clean (default-clean) @ my-app ---
[INFO] Deleting /home/test/workspace/java_project/target
[INFO] 
[INFO] --- enforcer:3.4.1:enforce (enforce-maven) @ my-app ---
[INFO] Rule 0: org.apache.maven.enforcer.rules.version.RequireMavenVersion passed
[INFO] Rule 1: org.apache.maven.enforcer.rules.version.RequireJavaVersion passed
[INFO] 
[INFO] --- resources:3.3.0:resources (default-resources) @ my-app ---
[INFO] skip non existing resourceDirectory /home/test/workspace/java_project/src/main/resources
[INFO] 
[INFO] --- compiler:3.12.1:compile (default-compile) @ my-app ---
[INFO] Recompiling the module because of changed source code.
[INFO] Compiling 1 source file with javac [debug target 1.8] to target/classes
[WARNING] bootstrap class path not set in conjunction with -source 8
[INFO] 
[INFO] --- resources:3.3.0:testResources (default-testResources) @ my-app ---
[INFO] skip non existing resourceDirectory /home/test/workspace/java_project/src/test/resources
[INFO] 
[INFO] --- compiler:3.12.1:testCompile (default-testCompile) @ my-app ---
[INFO] Recompiling the module because of changed dependency.
[INFO] Compiling 1 source file with javac [debug target 1.8] to target/test-classes
[WARNING] bootstrap class path not set in conjunction with -source 8
[INFO] 
[INFO] --- surefire:3.0.0-M8:test (default-test) @ my-app ---
[INFO] Tests are skipped.
[INFO] 
[INFO] --- jar:3.3.0:jar (default-jar) @ my-app ---
[INFO] Building jar: /home/test/workspace/java_project/target/my-app-1.0.jar
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  4.042 s
[INFO] Finished at: 2024-03-12T11:36:36Z
[INFO] ------------------------------------------------------------------------
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Test)
[Pipeline] sh
+ mvn test
[INFO] Scanning for projects...
[INFO] 
[INFO] ----------------------< com.mycompany.app:my-app >----------------------
[INFO] Building my-app 1.0
[INFO]   from pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- enforcer:3.4.1:enforce (enforce-maven) @ my-app ---
[INFO] Rule 0: org.apache.maven.enforcer.rules.version.RequireMavenVersion passed
[INFO] Rule 1: org.apache.maven.enforcer.rules.version.RequireJavaVersion passed
[INFO] 
[INFO] --- resources:3.3.0:resources (default-resources) @ my-app ---
[INFO] skip non existing resourceDirectory /home/test/workspace/java_project/src/main/resources
[INFO] 
[INFO] --- compiler:3.12.1:compile (default-compile) @ my-app ---
[INFO] Nothing to compile - all classes are up to date.
[INFO] 
[INFO] --- resources:3.3.0:testResources (default-testResources) @ my-app ---
[INFO] skip non existing resourceDirectory /home/test/workspace/java_project/src/test/resources
[INFO] 
[INFO] --- compiler:3.12.1:testCompile (default-testCompile) @ my-app ---
[INFO] Nothing to compile - all classes are up to date.
[INFO] 
[INFO] --- surefire:3.0.0-M8:test (default-test) @ my-app ---
[INFO] Using auto detected provider org.apache.maven.surefire.junitplatform.JUnitPlatformProvider
[INFO] 
[INFO] -------------------------------------------------------
[INFO]  T E S T S
[INFO] -------------------------------------------------------
[INFO] Running com.mycompany.app.AppTest
[INFO] Tests run: 2, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 0.099 s - in com.mycompany.app.AppTest
[INFO] 
[INFO] Results:
[INFO] 
[INFO] Tests run: 2, Failures: 0, Errors: 0, Skipped: 0
[INFO] 
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  3.383 s
[INFO] Finished at: 2024-03-12T11:36:42Z
[INFO] ------------------------------------------------------------------------
Post stage
[Pipeline] junit
Recording test results
[Checks API] No suitable checks publisher found.
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Deliver)
[Pipeline] sh
+ ./jenkins/scripts/deliver.sh
The following Maven command installs your Maven-built Java application
into the local Maven repository, which will ultimately be stored in
Jenkinss local Maven repository (and the "maven-repository" Docker data
volume).
+ mvn jar:jar install:install help:evaluate -Dexpression=project.name
[INFO] Scanning for projects...
[INFO] 
[INFO] ----------------------< com.mycompany.app:my-app >----------------------
[INFO] Building my-app 1.0
[INFO]   from pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- jar:3.3.0:jar (default-cli) @ my-app ---
[INFO] 
[INFO] --- install:3.1.0:install (default-cli) @ my-app ---
[INFO] Installing /home/test/workspace/java_project/pom.xml to /home/test/workspace/java_project/?/.m2/repository/com/mycompany/app/my-app/1.0/my-app-1.0.pom
[INFO] Installing /home/test/workspace/java_project/target/my-app-1.0.jar to /home/test/workspace/java_project/?/.m2/repository/com/mycompany/app/my-app/1.0/my-app-1.0.jar
[INFO] 
[INFO] ----------------------< com.mycompany.app:my-app >----------------------
[INFO] Building my-app 1.0
[INFO]   from pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- help:3.4.0:evaluate (default-cli) @ my-app ---
[INFO] No artifact parameter specified, using 'com.mycompany.app:my-app:jar:1.0' as project.
[INFO] 
my-app
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  1.509 s
[INFO] Finished at: 2024-03-12T11:36:47Z
[INFO] ------------------------------------------------------------------------
+ set +x
The following command extracts the value of the <name/> element
within <project/> of your Java/Maven projects "pom.xml" file.
++ mvn -q -DforceStdout help:evaluate -Dexpression=project.name
+ NAME=my-app
+ set +x
The following command behaves similarly to the previous one but
extracts the value of the <version/> element within <project/> instead.
++ mvn -q -DforceStdout help:evaluate -Dexpression=project.version
+ VERSION=1.0
+ set +x
The following command runs and outputs the execution of your Java
application (which Jenkins built using Maven) to the Jenkins UI.
+ java -jar target/my-app-1.0.jar
Hello World!
[Pipeline] }
[Pipeline] // stage
[Pipeline] }
$ docker stop --time=1 1c322a52f03643d723e0e5c2acc81c0b7e17cb2b00417c04be792ecae849aeb4
$ docker rm -f --volumes 1c322a52f03643d723e0e5c2acc81c0b7e17cb2b00417c04be792ecae849aeb4
[Pipeline] // withDockerContainer
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // node
[Pipeline] End of Pipeline
Finished: SUCCESS



