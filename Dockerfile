FROM openjdk
COPY target/tp-docker.war /
EXPOSE 8080
ENTRYPOINT ["java","-jar","/tp-docker.war"]
