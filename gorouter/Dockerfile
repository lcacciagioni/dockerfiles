# This is a very basic deployment for gnatsd high performance nats server
# This image is based in the oficial google image for golang.

FROM google/golang

# Here we will get the source code of gnatsd server

WORKDIR /gopath/src/gorouter

RUN ["go", "get", "github.com/cloudfoundry/gorouter"]

