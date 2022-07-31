load("@rules_foreign_cc//foreign_cc:defs.bzl", "configure_make")

filegroup(
    name = "all_srcs",
    srcs = glob(["**"]),
)

configure_make(
    name = "dstarrepeaterdaemon",
    targets = ["dstarrepeaterd"],
    args = ["-j$$(nproc)$$"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["dstarrepeaterd"],
    out_bin_dir = ".",
    configure_in_place = True,
    configure_options = ["--with-gpio"],
    postfix_script = "cp dstarrepeaterd $INSTALLDIR",
    deps = [ "@WiringPi//:WiringPi", "@WiringPi//:WiringPiHeaders" ],
)
