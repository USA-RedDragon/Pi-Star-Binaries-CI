load("@rules_foreign_cc//foreign_cc:defs.bzl", "make")

filegroup(
    name = "all_srcs",
    srcs = glob(["**"]),
)

make(
    name = "ircddbgatewayd",
    targets = ["ircDDBGateway/ircddbgatewayd"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["ircddbgatewayd"],
    out_bin_dir = ".",
    postfix_script = "cp ircDDBGateway/ircddbgatewayd $INSTALLDIR",
    copts = ["-DDCS_LINK", "-DDEXTRA_LINK", "-DUSE_GPSD"],
)

make(
    name = "aprstransmitd",
    targets = ["APRSTransmit/aprstransmitd"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["aprstransmitd"],
    out_bin_dir = ".",
    postfix_script = "cp APRSTransmit/aprstransmitd $INSTALLDIR",
)

make(
    name = "remotecontrold",
    targets = ["RemoteControl/remotecontrold"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["remotecontrold"],
    out_bin_dir = ".",
    postfix_script = "cp RemoteControl/remotecontrold $INSTALLDIR",
)

make(
    name = "starnetserverd",
    targets = ["StarNetServer/starnetserverd"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["starnetserverd"],
    out_bin_dir = ".",
    postfix_script = "cp StarNetServer/starnetserverd $INSTALLDIR",
)

make(
    name = "texttransmitd",
    targets = ["TextTransmit/texttransmitd"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["texttransmitd"],
    out_bin_dir = ".",
    postfix_script = "cp TextTransmit/texttransmitd $INSTALLDIR",
)

make(
    name = "timercontrold",
    targets = ["TimerControl/timercontrold"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["timercontrold"],
    out_bin_dir = ".",
    postfix_script = "cp TimerControl/timercontrold $INSTALLDIR",
)

make(
    name = "timeserverd",
    targets = ["TimeServer/timeserverd"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["timeserverd"],
    out_bin_dir = ".",
    postfix_script = "cp TimeServer/timeserverd $INSTALLDIR",
)

make(
    name = "voicetransmitd",
    targets = ["VoiceTransmit/voicetransmitd"],
    args = ["-j$$(nproc)"],
    lib_source = ":all_srcs",
    visibility = ["//visibility:public"],
    out_binaries = ["voicetransmitd"],
    out_bin_dir = ".",
    postfix_script = "cp VoiceTransmit/voicetransmitd $INSTALLDIR",
)
