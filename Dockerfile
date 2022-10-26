FROM openjdk:11
COPY target/tpAchatProject-1.0.jar /
EXPOSE 8085
ENTRYPOINT ["java", "-jar","/tpAchatProject-1.0.jar"]