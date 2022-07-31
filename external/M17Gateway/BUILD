load("@rules_foreign_cc//foreign_cc:defs.bzl", "make")

filegroup(
    name = "all_srcs",
    srcs = glob(["**"]),
)

make(
    name = "M17Gateway",
    targets = ["M17Gateway"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["M17Gateway"],
    out_bin_dir = ".",
    postfix_script = "cp M17Gateway $INSTALLDIR",
)
