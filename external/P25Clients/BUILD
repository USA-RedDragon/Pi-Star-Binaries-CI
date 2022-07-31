load("@rules_foreign_cc//foreign_cc:defs.bzl", "make")

filegroup(
    name = "all_srcs",
    srcs = glob(["**"]),
)

make(
    name = "P25Gateway",
    targets = ["P25Gateway"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["P25Gateway"],
    out_bin_dir = ".",
    postfix_script = "cp P25Gateway/P25Gateway $INSTALLDIR",
)

make(
    name = "P25Parrot",
    targets = ["P25Parrot"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["P25Parrot"],
    out_bin_dir = ".",
    postfix_script = "cp P25Parrot/P25Parrot $INSTALLDIR",
)