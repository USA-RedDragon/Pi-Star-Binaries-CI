load("@rules_foreign_cc//foreign_cc:defs.bzl", "make")

filegroup(
    name = "all_srcs",
    srcs = glob(["**"]),
)

make(
    name = "AMBEserver",
    targets = ["AMBEserver"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["AMBEserver"],
    out_bin_dir = ".",
    postfix_script = "cp AMBEserver $INSTALLDIR"
)
