FROM golang:1.8-alpine
MAINTAINER Luke Thompson <luke@dukeluke.com>

LABEL Description="This image is for the service build environment which requires golang."

# Service Build Dependencies
# - git required for go get
RUN apk add --no-cache git \
    && go get github.com/julienschmidt/httprouter

ENTRYPOINT ["/bin/sh"]
