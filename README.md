# CI builds of upstream software

## What is this?

This is a project to attempt to build all of the external dependencies of Pi-Star via Bazel in CI and (eventually) making a Pull Request to the destination repository.

This should allow faster iteration time and a lighter workload on Pi-Star maintainers, while ensuring external tool creators can ship fixes and features in a timely manner.

## TODO

- make libwxbase in Bazel
- convert loose scripts to usable form
- Delete config_clean.zip if not used anywhere
- Fixup Dockerfile building with libusb
- eventually make an OS image
- add bazel tests
- cross platform support
