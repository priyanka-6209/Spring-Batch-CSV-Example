FROM java:8
EXPOSE 8080
ADD /target/pirates-spring-csv.jar pirates-spring-csv.jar
ENTRYPOINT ["java", "-jar", "pirates-spring-csv-0.0.1.jar"]
