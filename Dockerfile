FROM openjdk
COPY target/Tp-Docker.war /
EXPOSE 8080
ENTRYPOINT ["java","-jar","/Tp-Docker.war"]
