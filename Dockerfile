FROM openjdk:11
EXPOSE 8085
ADD target/Devops.jar Devops.jar
ENTRYPOINT ["java","-jar","/Devops.jar"]
