FROM alpine:latest
MAINTAINER Ankit Goel (goelankit@protonmail.com)
COPY ./helloworld-arm /helloworld-arm
EXPOSE 8080
ENTRYPOINT [“/helloworld-arm”]
