genrule(
    name = "DAPNETGateway-bin",
    srcs = glob(["**"]),
    outs = ["DAPNETGateway"],
    cmd = """
set -euo pipefail

make -C external/DAPNETGateway DAPNETGateway
cp external/DAPNETGateway/DAPNETGateway $(location DAPNETGateway)
""",
    visibility = ["//visibility:public"],
)
