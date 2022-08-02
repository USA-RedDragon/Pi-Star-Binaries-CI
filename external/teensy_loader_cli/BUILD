genrule(
    name = "teensy_loader_cli-bin",
    srcs = glob(["**"]),
    outs = ["teensy_loader_cli"],
    cmd = """
set -euo pipefail

make -C external/teensy_loader_cli teensy_loader_cli
cp external/teensy_loader_cli/teensy_loader_cli $(location teensy_loader_cli)
""",
    visibility = ["//visibility:public"],
)
