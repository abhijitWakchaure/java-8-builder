FROM openjdk:8u242-jdk as builder
LABEL MAINTAINER="Abhijit Wakchaure <email@example.com>"
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} application.jar
RUN java -Djarmode=layertools -jar application.jar extract
