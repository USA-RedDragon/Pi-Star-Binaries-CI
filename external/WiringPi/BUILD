cc_library(
    name = "WiringPiHeaders",
    hdrs = glob(["wiringPi/*.h"]),
    visibility = ["//visibility:public"],
    includes = ["wiringPi"],
)

filegroup(
    name = "WiringPiHeaders-group",
    srcs = glob(["wiringPi/*.h"]),
    visibility = ["//visibility:public"],
)

cc_library(
    name = "WiringPiDevHeaders",
    hdrs = glob(["devLib/*.h"]),
    visibility = ["//visibility:public"],
)

filegroup(
    name = "WiringPiDevHeaders-group",
    srcs = glob(["devLib/*.h"]),
    visibility = ["//visibility:public"],
)

headers = [":WiringPiDevHeaders", ":WiringPiHeaders"]
files = glob(["**"])
files.extend(headers)

genrule(
    name = "libwiringPi",
    srcs = files,
    outs = ["libwiringPi.so"],
    cmd = """
set -euo pipefail

make -C external/WiringPi/wiringPi all
cp external/WiringPi/wiringPi/libwiringPi.so.* $(location libwiringPi.so)
""",
    visibility = ["//visibility:public"],
)

files.extend([":libwiringPi"])

genrule(
    name = "libwiringPiDev",
    srcs = files,
    outs = ["libwiringPiDev.so"],
    cmd = """
set -euo pipefail

make -C external/WiringPi/devLib all CFLAGS="-I$$(pwd)/external/WiringPi/wiringPi" LDFLAGS="-L$$(pwd)/$(BINDIR)/external/WiringPi"
cp external/WiringPi/devLib/libwiringPiDev.so.* $(location libwiringPiDev.so)
""",
    visibility = ["//visibility:public"],
)
