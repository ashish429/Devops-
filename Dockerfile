FROM openjdk:11
EXPOSE 8085
ADD target/devops.jar devops.jar
ENTRYPOINT ["java","-jar","/devops.jar"]
