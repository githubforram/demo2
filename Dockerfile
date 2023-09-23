FROM openjdk:8-jdk
WORKDIR /demo2
COPY demo2-0.0.1-SNAPSHOT.jar /demo2
EXPOSE 8080
CMD [ "java" , "-jar" , "demo2-0.0.1-SNAPSHOT.jar" ]
