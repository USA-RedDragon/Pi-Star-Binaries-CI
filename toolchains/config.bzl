# Defines the C++ settings that tell Bazel precisely how to construct C++
# commands. This is unique to C++ toolchains: other languages don't require
# anything like this. 
#
# This is mostly boilerplate. It provides all the structure Bazel's C++ logic
# expects (like where to find the compiler, linker, object code copier, etc) and
# points them all to a dummy script called "dummy_compiler_linker", which is
# checked in with this example.
#
# See
# https://docs.bazel.build/versions/master/cc-toolchain-config-reference.html
# for all the gory details.
#
# This file is more about C++-specific toolchain configuration than how to
# declare toolchains and match them to platforms. It's important if you want to
# write your own custom C++ toolchains. But if you want to write toolchains for
# other languages or figure out how to select toolchains for custom CPU types,
# OSes, etc., the BUILD file is much more interesting.

load("@bazel_tools//tools/build_defs/cc:action_names.bzl", "ACTION_NAMES")
load("@bazel_tools//tools/cpp:cc_toolchain_config_lib.bzl", "make_variable", "tool_path", "feature", "flag_group", "flag_set")

def _impl(ctx):
    cflags = ctx.attr.cflags
    ldflags = ctx.attr.ldflags

    toolchain_compiler_flags = feature(
        name = "compiler_flags",
        enabled = True,
        flag_sets = [
            flag_set(
                actions = [
                    ACTION_NAMES.assemble,
                    ACTION_NAMES.preprocess_assemble,
                    ACTION_NAMES.linkstamp_compile,
                    ACTION_NAMES.c_compile,
                    ACTION_NAMES.cpp_compile,
                    ACTION_NAMES.cpp_header_parsing,
                    ACTION_NAMES.cpp_module_compile,
                    ACTION_NAMES.cpp_module_codegen,
                    ACTION_NAMES.lto_backend,
                    ACTION_NAMES.clif_match
                ],
                flag_groups = [
                    flag_group(
                        flags = cflags,
                    ),
                ],
            ),
        ],
    )

    toolchain_linker_flags = feature(
        name = "linker_flags",
        enabled = True,
        flag_sets = [
            flag_set(
                actions = [
                    ACTION_NAMES.linkstamp_compile,
                ],
                flag_groups = [
                    flag_group(
                        flags = ldflags
                    )
                ]
            ),
        ],
    )

    dynamic_library_feature = feature(
        name = "supports_dynamic_linker",
        enabled = True,
    )

    tool_paths = [
        tool_path(
            name = "ar",
            path = "/usr/bin/llvm-ar",
        ),
        tool_path(
            name = "cpp",
            path = "/usr/bin/clang++",
        ),
        tool_path(
            name = "gcc",
            path = "/usr/bin/clang",
        ),
        tool_path(
            name = "gcov",
            path = "/usr/bin/llvm-profdata",
        ),
        tool_path(
            name = "ld",
            path = "/usr/bin/ld.lld",
        ),
        tool_path(
            name = "nm",
            path = "/usr/bin/llvm-nm",
        ),  
        tool_path(
            name = "objdump",
            path = "/usr/bin/llvm-objdump",
        ),
        tool_path(
            name = "strip",
            path = "/usr/bin/llvm-strip",
        ),
    ]

    make_variables = []

    if len(ldflags) > 0 and ldflags[0] != "":
        make_variables.append(make_variable(
            name = "LDFLAGS",
            value = " ".join(ldflags),
        ))
    else:
        make_variables.append(make_variable(
            name = "LDFLAGS",
            value = " ",
        ))
    if len(cflags) > 0 and cflags[0] != "":
        make_variables.append(make_variable(
            name = "CFLAGS",
            value = " ".join(cflags),
        ))
    else:
        make_variables.append(make_variable(
            name = "CFLAGS",
            value = " ",
        ))
    return [
        cc_common.create_cc_toolchain_config_info(
            ctx = ctx,
            toolchain_identifier = ctx.attr.name,
            host_system_name = "nothing",
            target_system_name = "nothing",
            target_cpu = "nothing",
            target_libc = "nothing",
            cc_target_os = "nothing",
            compiler = "nothing",
            abi_version = "nothing",
            abi_libc_version = "eleventy",
            tool_paths = tool_paths,
            features = [
                toolchain_compiler_flags,
                toolchain_linker_flags,
                dynamic_library_feature,
            ],
            make_variables = make_variables,
        )
    ]

clang_cc_toolchain_config = rule(
    implementation = _impl,
    provides = [CcToolchainConfigInfo],
    attrs = {
        "cflags": attr.string_list(),
        "ldflags": attr.string_list(),
    },
)
