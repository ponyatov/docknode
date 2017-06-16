#FROM alpine
FROM ubuntu:14.04

MAINTAINER Dmitry Ponyatov "dponyatov@gmail.com"

#RUN apk update
#RUN apk upgrade
#RUN apk add --no-cache git cmake make gcc g++
RUN apt update
RUN apt -y upgrade
RUN apt-get -y autoclean
RUN apt -y install git cmake make gcc g++ binutils-dev libboost-all-dev
