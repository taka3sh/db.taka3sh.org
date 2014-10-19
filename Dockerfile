FROM tutum/postgresql
MAINTAINER Kaito Udagawa

RUN sed -ie s!/a!/jp.a! /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get -y upgrade

RUN apt-get -y install openssh-server wget

ADD run_sshd.sh /
RUN chmod 0755 /*.sh
