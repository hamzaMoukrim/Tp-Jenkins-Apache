From openjdk :8
EXPOSE 8080
ADD target/Tp-Docker Tp-Docker
ENTRYPOINT ["java","-jar","/Tp-Docker"]