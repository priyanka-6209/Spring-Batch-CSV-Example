FROM java:8
RUN apt-get update
RUN apt-get install -y maven
WORKDIR ./
ADD pom.xml ./pom.xml
ADD src /src
RUN ["mvn", "package"]
EXPOSE 8080
ADD /target/pirates-spring-csv-0.0.1.jar pirates-spring-csv-0.0.1.jar
ENTRYPOINT ["java", "-jar", "pirates-spring-csv-0.0.1.jar"]
