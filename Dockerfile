FROM gradle:8.8.0-jdk17 AS gradle_build
WORKDIR /app
COPY .  /app
RUN gradle build --no-daemon

FROM openjdk:17-alpine
RUN mkdir app
COPY --from=gradle_build /app/build/libs/*.jar /app/app.jar
ENTRYPOINT  ["java", "-jar", "app/app.jar"]




