genrule(
    name = "APRSGateway-bin",
    srcs = glob(["**"]),
    outs = ["APRSGateway"],
    cmd = """
set -euo pipefail

make -C external/APRSGateway APRSGateway
cp external/APRSGateway/APRSGateway $(location APRSGateway)
""",
    visibility = ["//visibility:public"],
)
