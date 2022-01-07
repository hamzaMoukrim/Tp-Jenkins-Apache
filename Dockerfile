From openjdk :8
EXPOSE 8080
ADD ./target/Tp-Docker.war ./target/Tp-Docker.war
ENTRYPOINT ["java","-jar","/Tp-Docker.war"]
