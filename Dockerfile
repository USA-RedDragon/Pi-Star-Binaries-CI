FROM golang@sha256:e0174e51e81218523251d85d248a90d24c3d5e81543b4f07a5d66229397db190 as bazelisk-build

RUN go install github.com/bazelbuild/bazelisk@latest
RUN mv $(go env GOPATH)/bin/bazelisk /usr/bin/bazelisk

FROM ubuntu:jammy@sha256:b1066385161d28ddf6bc7e7b28a9170eec11484c821d1a5150d176cbde41d7f7

# Install build-essential and other deps
RUN apt-get update && apt-get install -y build-essential pkg-config ca-certificates python3 libusb-1.0-0-dev git libwxbase3.0-dev && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY --from=bazelisk-build /usr/bin/bazelisk /usr/bin/bazelisk

CMD [ "bazelisk" ]