FROM openjdk:11
COPY target/*.jar /
ENTRYPOINT ["java", "-jar","/tpAchatProject-1.0.jar"]
EXPOSE 8089
