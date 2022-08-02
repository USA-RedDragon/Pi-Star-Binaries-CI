files = glob(["**"])
files.extend(["@WiringPi//:libwiringPi", "@WiringPi//:libwiringPiDev", "@WiringPi//:WiringPiHeaders-group", "@WiringPi//:WiringPiDevHeaders-group"])

genrule(
    name = "dstarrepeaterdaemon-bin",
    srcs = files,
    outs = ["dstarrepeaterd"],
    cmd = """
set -euo pipefail

export CFLAGS="-I$$(pwd)/external/WiringPi/wiringPi -I$$(pwd)/external/WiringPi/devLib"
export CXXFLAGS="$${CFLAGS}"
export LDFLAGS="-L$$(pwd)/$(BINDIR)/external/WiringPi"

( cd external/OpenDV && ./configure --with-gpio)
make -C external/OpenDV dstarrepeaterd
cp -v external/OpenDV/dstarrepeaterd $(location dstarrepeaterd)
""",
    visibility = ["//visibility:public"],
)
