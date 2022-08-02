load("@rules_foreign_cc//foreign_cc:defs.bzl", "make")

filegroup(
    name = "all_srcs",
    srcs = glob(["**"]),
)

genrule(
    name = "ircddbgatewayd-bin",
    srcs = glob(["**"]),
    outs = ["ircddbgatewayd"],
    cmd = """
set -euo pipefail

make -C external/ircDDBGateway ircDDBGateway/ircddbgatewayd CXXFLAGS="-DDCS_LINK -DDEXTRA_LINK -DUSE_GPSD"
cp external/ircDDBGateway/ircDDBGateway/ircddbgatewayd $(location ircddbgatewayd)
""",
    visibility = ["//visibility:public"],
)

genrule(
    name = "aprstransmitd-bin",
    srcs = glob(["**"]),
    outs = ["aprstransmitd"],
    cmd = """
set -euo pipefail

make -C external/ircDDBGateway APRSTransmit/aprstransmitd
cp external/ircDDBGateway/APRSTransmit/aprstransmitd $(location aprstransmitd)
""",
    visibility = ["//visibility:public"],
)

genrule(
    name = "remotecontrold-bin",
    srcs = glob(["**"]),
    outs = ["remotecontrold"],
    cmd = """
set -euo pipefail

make -C external/ircDDBGateway RemoteControl/remotecontrold
cp external/ircDDBGateway/RemoteControl/remotecontrold $(location remotecontrold)
""",
    visibility = ["//visibility:public"],
)

genrule(
    name = "starnetserverd-bin",
    srcs = glob(["**"]),
    outs = ["starnetserverd"],
    cmd = """
set -euo pipefail

make -C external/ircDDBGateway StarNetServer/starnetserverd
cp external/ircDDBGateway/StarNetServer/starnetserverd $(location starnetserverd)
""",
    visibility = ["//visibility:public"],
)

genrule(
    name = "texttransmitd-bin",
    srcs = glob(["**"]),
    outs = ["texttransmitd"],
    cmd = """
set -euo pipefail

make -C external/ircDDBGateway TextTransmit/texttransmitd
cp external/ircDDBGateway/TextTransmit/texttransmitd $(location texttransmitd)
""",
    visibility = ["//visibility:public"],
)

genrule(
    name = "timercontrold-bin",
    srcs = glob(["**"]),
    outs = ["timercontrold"],
    cmd = """
set -euo pipefail

make -C external/ircDDBGateway TimerControl/timercontrold
cp external/ircDDBGateway/TimerControl/timercontrold $(location timercontrold)
""",
    visibility = ["//visibility:public"],
)

genrule(
    name = "timeserverd-bin",
    srcs = glob(["**"]),
    outs = ["timeserverd"],
    cmd = """
set -euo pipefail

make -C external/ircDDBGateway TimeServer/timeserverd
cp external/ircDDBGateway/TimeServer/timeserverd $(location timeserverd)
""",
    visibility = ["//visibility:public"],
)

genrule(
    name = "voicetransmitd-bin",
    srcs = glob(["**"]),
    outs = ["voicetransmitd"],
    cmd = """
set -euo pipefail

make -C external/ircDDBGateway VoiceTransmit/voicetransmitd
cp external/ircDDBGateway/VoiceTransmit/voicetransmitd $(location voicetransmitd)
""",
    visibility = ["//visibility:public"],
)
