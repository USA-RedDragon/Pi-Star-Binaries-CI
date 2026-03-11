FROM golang@sha256:c7e98cc0fd4dfb71ee7465fee6c9a5f079163307e4bf141b336bb9dae00159a5 as bazelisk-build

RUN go install github.com/bazelbuild/bazelisk@latest
RUN mv $(go env GOPATH)/bin/bazelisk /usr/bin/bazelisk

FROM ubuntu:jammy@sha256:3ba65aa20f86a0fad9df2b2c259c613df006b2e6d0bfcc8a146afb8c525a9751

# Install build-essential and other deps
RUN apt-get update && apt-get install -y build-essential pkg-config ca-certificates python3 libusb-1.0-0-dev git libwxbase3.0-dev && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY --from=bazelisk-build /usr/bin/bazelisk /usr/bin/bazelisk

CMD [ "bazelisk" ]