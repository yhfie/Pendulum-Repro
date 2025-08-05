FROM ubuntu:bionic

ENV LC_ALL=C.UTF-8

RUN apt-get -y update && \
    apt-get -y install openjdk-8-jdk gcc python3 git make tmux rsync netcat wget unzip vim && \
    wget https://services.gradle.org/distributions/gradle-7.4.1-bin.zip  -P /tmp && \
    unzip -d /opt /tmp/gradle-7.4.1-bin.zip
    
ENV PATH=/opt/gradle-7.4.1/bin:$PATH

# copy Pendulum
COPY . /home/root/pendulum
RUN chown -R root /home/root/pendulum
WORKDIR /home/root/pendulum/tool
RUN ./setup.sh
WORKDIR /home/root/pendulum
