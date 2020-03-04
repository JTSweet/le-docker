FROM ubuntu:latest

RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise main universe" >> /etc/apt/source.list
RUN apt-get update
RUN apt-get -y install rsyslog
RUN apt-get -y install vim
ADD ./logentries.conf /etc/rsyslog.d/logentries.conf
