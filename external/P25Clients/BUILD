genrule(
    name = "P25Gateway-bin",
    srcs = glob(["**"]),
    outs = ["P25Gateway"],
    cmd = """
set -euo pipefail

make -C external/P25Clients P25Gateway
cp external/P25Clients/P25Gateway/P25Gateway $(location P25Gateway)
""",
    visibility = ["//visibility:public"],
)

genrule(
    name = "P25Parrot-bin",
    srcs = glob(["**"]),
    outs = ["P25Parrot"],
    cmd = """
set -euo pipefail

make -C external/P25Clients P25Parrot
cp external/P25Clients/P25Parrot/P25Parrot $(location P25Parrot)
""",
    visibility = ["//visibility:public"],
)
