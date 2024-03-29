FROM golang:1.8-alpine
ADD . /go/src/helloworld-arm
RUN env GOOS=linux GOARCH=arm GOARM=5 go install helloworld-arm

FROM alpine:latest
COPY --from=0 /go/bin/linux_arm .
RUN ls
ENV PORT 8080
ENTRYPOINT ["./helloworld-arm"]
