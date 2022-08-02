genrule(
    name = "NextionDriver-bin",
    srcs = glob(["**"]),
    outs = ["NextionDriver"],
    cmd = """
set -euo pipefail

make -C external/NextionDriver NextionDriver
cp external/NextionDriver/NextionDriver $(location NextionDriver)
""",
    visibility = ["//visibility:public"],
)
