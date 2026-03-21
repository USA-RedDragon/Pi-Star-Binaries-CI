FROM golang@sha256:595c7847cff97c9a9e76f015083c481d26078f961c9c8dca3923132f51fe12f1 as bazelisk-build

RUN go install github.com/bazelbuild/bazelisk@latest
RUN mv $(go env GOPATH)/bin/bazelisk /usr/bin/bazelisk

FROM ubuntu:jammy@sha256:ce4a593b4e323dcc3dd728e397e0a866a1bf516a1b7c31d6aa06991baec4f2e0

# Install build-essential and other deps
RUN apt-get update && apt-get install -y build-essential pkg-config ca-certificates python3 libusb-1.0-0-dev git libwxbase3.0-dev && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY --from=bazelisk-build /usr/bin/bazelisk /usr/bin/bazelisk

CMD [ "bazelisk" ]