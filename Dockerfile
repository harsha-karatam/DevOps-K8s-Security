FROM adoptopenjdk/openjdk8:alpine-slim
RUN mkdir /app
WORKDIR /app

COPY C:\Users\harsh\Downloads\numeric-0.0.1.jar /app/numeric-0.0.1.jar
CMD ["java", "-jar", "numeric-0.0.1.jar"]
