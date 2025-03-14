FROM openjdk:17
EXPOSE 9090
ADD target/maven-webapp.jar maven-webapp.jar
ENTRYPOINT ["java", "-jar", "/maven-webapp.jar"]