load("@rules_foreign_cc//foreign_cc:defs.bzl", "make")

filegroup(
    name = "all_srcs",
    srcs = glob(["**"]),
)

make(
    name = "DGIdGateway",
    targets = ["DGIdGateway"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["DGIdGateway"],
    out_bin_dir = ".",
    postfix_script = "cp DGIdGateway/DGIdGateway $INSTALLDIR",
)

make(
    name = "YSFGateway",
    targets = ["YSFGateway"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["YSFGateway"],
    out_bin_dir = ".",
    postfix_script = "cp YSFGateway/YSFGateway $INSTALLDIR",
)

make(
    name = "YSFParrot",
    targets = ["YSFParrot"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["YSFParrot"],
    out_bin_dir = ".",
    postfix_script = "cp YSFParrot/YSFParrot $INSTALLDIR",
)