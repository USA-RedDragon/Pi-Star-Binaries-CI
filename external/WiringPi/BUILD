load("@rules_foreign_cc//foreign_cc:defs.bzl", "make")

filegroup(
    name = "all_srcs",
    srcs = glob(["**"]),
)

make(
    name = "WiringPi",
    targets = ["all"],
    args = ["-j$$(nproc) -C wiringPi"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_shared_libs = ["libwiringPi.so"],
    out_lib_dir = ".",
    out_include_dir = ".",
    postfix_script = "cp -v wiringPi/libwiringPi.so.* $INSTALLDIR/libwiringPi.so",
)

make(
    name = "WiringPiHeaders",
    targets = ["clean"],
    args = ["-j$$(nproc) -C wiringPi"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_headers_only = True,
    out_include_dir = ".",
    postfix_script = "cp -v wiringPi/*.h $INSTALLDIR",
)

make(
    name = "WiringPiDev",
    targets = ["all"],
    args = ["-j$$(nproc) -C devLib"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_shared_libs = ["libwiringPiDev.so"],
    out_bin_dir = ".",
    out_include_dir = ".",
    out_lib_dir = ".",
    postfix_script = "cp devLib/libwiringPiDev.so.* $INSTALLDIR/libwiringPiDev.so",
    deps = [ ":WiringPi", ":WiringPiHeaders" ],
)

make(
    name = "WiringPiDevHeaders",
    targets = ["clean"],
    args = ["-j$$(nproc) -C wiringPi"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_headers_only = True,
    out_include_dir = ".",
    postfix_script = "cp -v devLib/*.h $INSTALLDIR",
)