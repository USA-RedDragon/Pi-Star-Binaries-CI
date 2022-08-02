genrule(
    name = "DGIdGateway-bin",
    srcs = glob(["**"]),
    outs = ["DGIdGateway"],
    cmd = """
set -euo pipefail

make -C external/YSFClients DGIdGateway
cp external/YSFClients/DGIdGateway/DGIdGateway $(location DGIdGateway)
""",
    visibility = ["//visibility:public"],
)

genrule(
    name = "YSFGateway-bin",
    srcs = glob(["**"]),
    outs = ["YSFGateway"],
    cmd = """
set -euo pipefail

make -C external/YSFClients YSFGateway
cp external/YSFClients/YSFGateway/YSFGateway $(location YSFGateway)
""",
    visibility = ["//visibility:public"],
)

genrule(
    name = "YSFParrot-bin",
    srcs = glob(["**"]),
    outs = ["YSFParrot"],
    cmd = """
set -euo pipefail

make -C external/YSFClients YSFParrot
cp external/YSFClients/YSFParrot/YSFParrot $(location YSFParrot)
""",
    visibility = ["//visibility:public"],
)
