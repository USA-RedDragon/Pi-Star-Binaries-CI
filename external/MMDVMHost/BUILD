load("@rules_foreign_cc//foreign_cc:defs.bzl", "make")

filegroup(
    name = "all_srcs",
    srcs = glob(["**"]),
)

genrule(
    name = "MMDVMHost-bin",
    srcs = glob(["**"]),
    outs = ["MMDVMHost"],
    cmd = """
set -euo pipefail

make -C external/MMDVMHost MMDVMHost
cp external/MMDVMHost/MMDVMHost $(location MMDVMHost)
""",
    visibility = ["//visibility:public"],
)

files = glob(["**"])
files.extend(["@WiringPi//:libwiringPi", "@WiringPi//:libwiringPiDev", "@WiringPi//:WiringPiHeaders-group", "@WiringPi//:WiringPiDevHeaders-group"])

genrule(
    name = "MMDVMHost_Adafruit-bin",
    srcs = files,
    outs = ["MMDVMHost_Adafruit"],
    cmd = """
set -euo pipefail

export CFLAGS="-I$$(pwd)/external/WiringPi/wiringPi -I$$(pwd)/external/WiringPi/devLib -L$$(pwd)/$(BINDIR)/external/WiringPi"
make -f Makefile.Pi.Adafruit -C external/MMDVMHost MMDVMHost CFLAGS="$${CFLAGS}"
cp external/MMDVMHost/MMDVMHost $(location MMDVMHost_Adafruit)
""",
    visibility = ["//visibility:public"],
)

genrule(
    name = "RemoteCommand-bin",
    srcs = glob(["**"]),
    outs = ["RemoteCommand"],
    cmd = """
set -euo pipefail

make -C external/MMDVMHost RemoteCommand
cp external/MMDVMHost/RemoteCommand $(location RemoteCommand)
""",
    visibility = ["//visibility:public"],
)
