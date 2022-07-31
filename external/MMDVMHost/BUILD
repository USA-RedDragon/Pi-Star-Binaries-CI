load("@rules_foreign_cc//foreign_cc:defs.bzl", "make")

filegroup(
    name = "all_srcs",
    srcs = glob(["**"]),
)

make(
    name = "MMDVMHost",
    targets = ["MMDVMHost"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["MMDVMHost"],
    out_bin_dir = ".",
    postfix_script = "cp MMDVMHost $INSTALLDIR",
)

make(
    name = "MMDVMHost_Adafruit",
    targets = ["MMDVMHost"],
    args = ["-j$$(nproc) -f Makefile.Pi.Adafruit"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["MMDVMHost_Adafruit"],
    out_bin_dir = ".",
    postfix_script = "cp MMDVMHost $INSTALLDIR/MMDVMHost_Adafruit",
    deps = [ "@WiringPi//:WiringPi", "@WiringPi//:WiringPiDev", "@WiringPi//:WiringPiHeaders", "@WiringPi//:WiringPiDevHeaders" ],
)

make(
    name = "RemoteCommand",
    targets = ["RemoteCommand"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["RemoteCommand"],
    out_bin_dir = ".",
    postfix_script = "cp RemoteCommand $INSTALLDIR",
)
