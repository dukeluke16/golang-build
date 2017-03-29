FROM golang:1.8-alpine
MAINTAINER Luke Thompson <luke@dukeluke.com>

LABEL Description="This image is for the service build environment which requires golang."

# Service Build Dependencies
# - git required for go get
RUN apk add --no-cache git \
    && go get golang.org/x/text/language \
    && go get github.com/newrelic/go-agent

ENTRYPOINT ["/bin/sh"]
