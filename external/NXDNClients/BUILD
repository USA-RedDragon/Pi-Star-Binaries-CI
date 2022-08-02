genrule(
    name = "NXDNGateway-bin",
    srcs = glob(["**"]),
    outs = ["NXDNGateway"],
    cmd = """
set -euo pipefail

make -C external/NXDNClients NXDNGateway
cp external/NXDNClients/NXDNGateway/NXDNGateway $(location NXDNGateway)
""",
    visibility = ["//visibility:public"],
)

genrule(
    name = "NXDNParrot-bin",
    srcs = glob(["**"]),
    outs = ["NXDNParrot"],
    cmd = """
set -euo pipefail

make -C external/NXDNClients NXDNParrot
cp external/NXDNClients/NXDNParrot/NXDNParrot $(location NXDNParrot)
""",
    visibility = ["//visibility:public"],
)
