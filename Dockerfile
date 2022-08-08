FROM openjdk
COPY . /usr/src/myapp
EXPOSE 8080
ENTRYPOINT ["java","-jar","/my-app-1.0-SNAPSHOT.jar"]
