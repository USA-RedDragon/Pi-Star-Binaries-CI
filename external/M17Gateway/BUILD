genrule(
    name = "M17Gateway-bin",
    srcs = glob(["**"]),
    outs = ["M17Gateway"],
    cmd = """
set -euo pipefail

make -C external/M17Gateway M17Gateway
cp external/M17Gateway/M17Gateway $(location M17Gateway)
""",
    visibility = ["//visibility:public"],
)
