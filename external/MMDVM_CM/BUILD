load("@rules_foreign_cc//foreign_cc:defs.bzl", "make")

filegroup(
    name = "all_srcs",
    srcs = glob(["**"]),
)

make(
    name = "DMR2NXDN",
    targets = ["DMR2NXDN"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["DMR2NXDN"],
    out_bin_dir = ".",
    env = {
        "CXX": "/usr/bin/g++"
    },
    postfix_script = "cp DMR2NXDN/DMR2NXDN $INSTALLDIR",
)

make(
    name = "DMR2YSF",
    targets = ["DMR2YSF"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["DMR2YSF"],
    out_bin_dir = ".",
    env = {
        "CXX": "/usr/bin/g++"
    },
    postfix_script = "cp DMR2YSF/DMR2YSF $INSTALLDIR",
)

make(
    name = "YSF2DMR",
    targets = ["YSF2DMR"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["YSF2DMR"],
    out_bin_dir = ".",
    env = {
        "CXX": "/usr/bin/g++"
    },
    postfix_script = "cp YSF2DMR/YSF2DMR $INSTALLDIR",
)

make(
    name = "YSF2NXDN",
    targets = ["YSF2NXDN"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["YSF2NXDN"],
    out_bin_dir = ".",
    env = {
        "CXX": "/usr/bin/g++"
    },
    postfix_script = "cp YSF2NXDN/YSF2NXDN $INSTALLDIR",
)

make(
    name = "YSF2P25",
    targets = ["YSF2P25"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["YSF2P25"],
    out_bin_dir = ".",
    env = {
        "CXX": "/usr/bin/g++"
    },
    postfix_script = "cp YSF2P25/YSF2P25 $INSTALLDIR",
)

make(
    name = "NXDN2DMR",
    targets = ["NXDN2DMR"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["NXDN2DMR"],
    out_bin_dir = ".",
    env = {
        "CXX": "/usr/bin/g++"
    },
    postfix_script = "cp NXDN2DMR/NXDN2DMR $INSTALLDIR",
)