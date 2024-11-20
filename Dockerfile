FROM ubuntu:latest
LABEL authors="hieun"

ENTRYPOINT ["top", "-b"]