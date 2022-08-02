genrule(
    name = "AMBEserver-bin",
    srcs = glob(["**"]),
    outs = ["AMBEserver"],
    cmd = """
set -euo pipefail

make -C external/AMBEserver AMBEserver
cp external/AMBEserver/AMBEserver $(location AMBEserver)
""",
    visibility = ["//visibility:public"],
)
