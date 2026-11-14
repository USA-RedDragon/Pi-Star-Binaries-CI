FROM golang@sha256:ec47ea3725fea0cc88f6de94919aef19f40f12fc1ec0e2d1b3426dbf15ecca04 as bazelisk-build

RUN go install github.com/bazelbuild/bazelisk@latest
RUN mv $(go env GOPATH)/bin/bazelisk /usr/bin/bazelisk

FROM ubuntu:jammy@sha256:74b12b11ffa550fba1929ad4d8d16533c34f6612728469671afba1b03b66881c

# Install build-essential and other deps
RUN apt-get update && apt-get install -y build-essential pkg-config ca-certificates python3 libusb-1.0-0-dev git libwxbase3.0-dev && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY --from=bazelisk-build /usr/bin/bazelisk /usr/bin/bazelisk

CMD [ "bazelisk" ]