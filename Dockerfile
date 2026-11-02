FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY q1.java .

RUN javac q1.java

CMD ["java","q1.java"]
