load("@rules_foreign_cc//foreign_cc:defs.bzl", "make")

filegroup(
    name = "all_srcs",
    srcs = glob(["**"]),
)

make(
    name = "teensy_loader_cli",
    targets = ["teensy_loader_cli"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["teensy_loader_cli"],
    out_bin_dir = ".",
    postfix_script = "cp teensy_loader_cli $INSTALLDIR",
)
