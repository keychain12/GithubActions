# 👇 베이스 이미지를 amazoncorretto 21로 변경합니다.
FROM amazoncorretto:21-alpine-jdk

ARG JAR_FILE=build/libs/*.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]