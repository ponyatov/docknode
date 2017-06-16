FROM gitclone
#FROM alpine
#FROM scratch
#FROM busybox
#FROM ubuntu:14.04

MAINTAINER Dmitry Ponyatov "dponyatov@gmail.com"

# RUN apk add --no-cache bash sudo
# RUN apk add --no-cache binutils llvm4

#ADD https://github.com/opencog/ocpkg/raw/master/ocpkg /tmp/ocpkg
#RUN chmod +x /tmp/ocpkg
#RUN /tmp/ocpkg -rdpvl

RUN mkdir /tmp/cogutils /tmp/atomspace /tmp/opencog
RUN cd /tmp/cogutils  ; cmake /cogutils  && make -j4 && make install && rm -rf /cogutils  /tmp/cogutils
RUN cd /tmp/atomspace ; cmake /atomspace && make -j4 && make install && rm -rf /atomspace /tmp/atomspace
RUN cd /tmp/opencog   ; cmake /opencog   && make -j4 && make install && rm -rf /opencog   /tmp/opencog
