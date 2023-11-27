FROM docker.io/maven:3.9.5-eclipse-temurin-21
COPY . /app
WORKDIR /app
RUN mvn -q clean package -DskipTests
EXPOSE 5005
EXPOSE 8080
ENTRYPOINT java -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=*:5005 -jar /app/target/demo-0.0.1-SNAPSHOT.jar
