load("@rules_foreign_cc//foreign_cc:defs.bzl", "make")

filegroup(
    name = "all_srcs",
    srcs = glob(["**"]),
)

make(
    name = "NXDNGateway",
    targets = ["NXDNGateway"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["NXDNGateway"],
    out_bin_dir = ".",
    postfix_script = "cp NXDNGateway/NXDNGateway $INSTALLDIR",
)

make(
    name = "NXDNParrot",
    targets = ["NXDNParrot"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["NXDNParrot"],
    out_bin_dir = ".",
    postfix_script = "cp NXDNParrot/NXDNParrot $INSTALLDIR",
)
