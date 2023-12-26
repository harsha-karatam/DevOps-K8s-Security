FROM adoptopenjdk/openjdk8:alpine-slim

WORKDIR C:/Users/harsh/Downloads/numeric-0.0.1.jar

COPY numeric-0.0.1.jar C:/Users/harsh/Downloads/numeric-0.0.1.jar

CMD ["java", "-jar", "numeric-0.0.1.jar"]

