# Defines a custom C++ toolchain that invokes the "fake" dummy_compiler_linker
# script to simulate compiling and linking.
#
# The point of this file is to show how we're defining a toolchain that triggers
# with //platforms:custom_machine. These match because they both specify
# @platforms//cpu:ppc.

load("//toolchains:config.bzl", "clang_cc_toolchain_config")


clang_cc_toolchain_config(
    name = "clang-arm-config",
    cflags = ["-target arm-linux-gnueabihf"],
    ldflags = [""],
)

clang_cc_toolchain_config(
    name = "clang-desktop-config",
    cflags = ["-target x86_64-linux-gnueabihf"],
    ldflags = [""],
)

clang_cc_toolchain_config(
    name = "clang-arm64-config",
    cflags = ["-target aarch64-linux-gnueabihf"],
    ldflags = [""],
)

filegroup(
    name = "toolchain_files",
    srcs = ["dummy_compiler_linker"],
)

cc_toolchain(
  name = "clang-arm-definition",
  all_files = ":toolchain_files",
  compiler_files = ":toolchain_files",
  strip_files = ":toolchain_files",
  objcopy_files = ":toolchain_files",
  linker_files = ":toolchain_files",
  dwp_files = ":toolchain_files",
  toolchain_config = ":clang-arm-config",
)

cc_toolchain(
  name = "clang-desktop-definition",
  all_files = ":toolchain_files",
  compiler_files = ":toolchain_files",
  strip_files = ":toolchain_files",
  objcopy_files = ":toolchain_files",
  linker_files = ":toolchain_files",
  dwp_files = ":toolchain_files",
  toolchain_config = ":clang-desktop-config",
)

cc_toolchain(
  name = "clang-arm64-definition",
  all_files = ":toolchain_files",
  compiler_files = ":toolchain_files",
  strip_files = ":toolchain_files",
  objcopy_files = ":toolchain_files",
  linker_files = ":toolchain_files",
  dwp_files = ":toolchain_files",
  toolchain_config = ":clang-arm64-config",
)

toolchain(
  name = "clang-arm",
  toolchain = ":clang-arm-definition",
  toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
  target_compatible_with = ["//:pi-platform"],
  visibility = ["//visibility:public"],
)

toolchain(
  name = "clang-desktop",
  toolchain = ":clang-desktop-definition",
  toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
  target_compatible_with = ["//:desktop-platform"],
  visibility = ["//visibility:public"],
)

toolchain(
  name = "clang-arm64",
  toolchain = ":clang-arm64-definition",
  toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
  target_compatible_with = ["//:pi64-platform"],
  visibility = ["//visibility:public"],
)
