load("@rules_foreign_cc//foreign_cc:defs.bzl", "make")

filegroup(
    name = "all_srcs",
    srcs = glob(["**"]),
)

genrule(
    name = "DMR2NXDN-bin",
    srcs = glob(["**"]),
    outs = ["DMR2NXDN"],
    cmd = """
set -euo pipefail

make -C external/MMDVM_CM DMR2NXDN
cp external/MMDVM_CM/DMR2NXDN/DMR2NXDN $(location DMR2NXDN)
""",
    visibility = ["//visibility:public"],
)

genrule(
    name = "DMR2YSF-bin",
    srcs = glob(["**"]),
    outs = ["DMR2YSF"],
    cmd = """
set -euo pipefail

make -C external/MMDVM_CM DMR2YSF
cp external/MMDVM_CM/DMR2YSF/DMR2YSF $(location DMR2YSF)
""",
    visibility = ["//visibility:public"],
)

genrule(
    name = "YSF2DMR-bin",
    srcs = glob(["**"]),
    outs = ["YSF2DMR"],
    cmd = """
set -euo pipefail

make -C external/MMDVM_CM YSF2DMR
cp external/MMDVM_CM/YSF2DMR/YSF2DMR $(location YSF2DMR)
""",
    visibility = ["//visibility:public"],
)

genrule(
    name = "YSF2NXDN-bin",
    srcs = glob(["**"]),
    outs = ["YSF2NXDN"],
    cmd = """
set -euo pipefail

make -C external/MMDVM_CM YSF2NXDN
cp external/MMDVM_CM/YSF2NXDN/YSF2NXDN $(location YSF2NXDN)
""",
    visibility = ["//visibility:public"],
)

genrule(
    name = "YSF2P25-bin",
    srcs = glob(["**"]),
    outs = ["YSF2P25"],
    cmd = """
set -euo pipefail

make -C external/MMDVM_CM YSF2P25
cp external/MMDVM_CM/YSF2P25/YSF2P25 $(location YSF2P25)
""",
    visibility = ["//visibility:public"],
)

genrule(
    name = "NXDN2DMR-bin",
    srcs = glob(["**"]),
    outs = ["NXDN2DMR"],
    cmd = """
set -euo pipefail

make -C external/MMDVM_CM NXDN2DMR
cp external/MMDVM_CM/NXDN2DMR/NXDN2DMR $(location NXDN2DMR)
""",
    visibility = ["//visibility:public"],
)
