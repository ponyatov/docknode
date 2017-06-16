
FROM alpine
#FROM scratch
#FROM busybox
#FROM ubuntu:14.04

MAINTAINER dponyatov@gmail.com
#LABEL maintainer="Dmitry Ponyatov"

#ENTRYPOINT ["/bin/sh"]

RUN apk update
RUN apk upgrade
RUN apk add --no-cache binutils gcc make git llvm4
