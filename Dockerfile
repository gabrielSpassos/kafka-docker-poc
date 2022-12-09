FROM ubuntu:22.04
LABEL maintainer="Gabriel Passos <gabrielsantos45725@gmail.com>"

# Update Ubuntu
RUN apt-get update -y

# Install wget
RUN apt-get install wget -y

WORKDIR /app

# Download kafka
RUN wget https://archive.apache.org/dist/kafka/2.3.0/kafka_2.12-2.3.0.tgz

RUN tar -xvzf kafka_2.12-2.3.0.tgz

RUN mv kafka_2.12-2.3.0 kafka

# Install Java
RUN apt install default-jre -y