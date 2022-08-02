genrule(
    name = "DMRGateway-bin",
    srcs = glob(["**"]),
    outs = ["DMRGateway"],
    cmd = """
set -euo pipefail

make -C external/DMRGateway DMRGateway
cp external/DMRGateway/DMRGateway $(location DMRGateway)
""",
    visibility = ["//visibility:public"],
)