FROM golang@sha256:313faae491b410a35402c05d35e7518ae99103d957308e940e1ae2cfa0aac29b as bazelisk-build

RUN go install github.com/bazelbuild/bazelisk@latest
RUN mv $(go env GOPATH)/bin/bazelisk /usr/bin/bazelisk

FROM ubuntu:jammy@sha256:4f838adc7181d9039ac795a7d0aba05a9bd9ecd480d294483169c5def983b64d

# Install build-essential and other deps
RUN apt-get update && apt-get install -y build-essential pkg-config ca-certificates python3 libusb-1.0-0-dev git libwxbase3.0-dev && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY --from=bazelisk-build /usr/bin/bazelisk /usr/bin/bazelisk

CMD [ "bazelisk" ]