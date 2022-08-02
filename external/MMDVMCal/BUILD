genrule(
    name = "MMDVMCal-bin",
    srcs = glob(["**"]),
    outs = ["MMDVMCal"],
    cmd = """
set -euo pipefail

make -C external/MMDVMCal MMDVMCal
cp external/MMDVMCal/MMDVMCal $(location MMDVMCal)
""",
    visibility = ["//visibility:public"],
)
