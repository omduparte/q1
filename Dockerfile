FROM openjdk:17-jdk-slim

WORKDIR /app

COPY q1.java .

RUN javac q1.java

CMD ["java","q1.java"]
