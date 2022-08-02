load("@rules_pkg//pkg:zip.bzl", "pkg_zip")
load("@rules_pkg//pkg:mappings.bzl", "pkg_files", "strip_prefix")

pkg_files(
    name = "rpi-firmware",
    srcs = [
        "@rpi-firmware//:rpi-firmware",
    ],
    prefix = "boot",
    strip_prefix = strip_prefix.from_pkg(),
)

pkg_files(
    name = "rpi-overlay-includes",
    srcs = [
        "@rpi-firmware//:rpi-overlay-includes",
    ],
    prefix = "boot",
    strip_prefix = strip_prefix.from_pkg(),
)

pkg_files(
    name = "wrappers",
    srcs = [
        "//wrappers:wrappers",
    ],
    prefix = "usr/local/bin",
    strip_prefix = strip_prefix.from_pkg(),
)

pkg_files(
    name = "libs",
    srcs = [
        "@WiringPi//:libwiringPi",
        "@WiringPi//:libwiringPiDev",
    ],
    prefix = "usr/local/lib",
    strip_prefix = strip_prefix.from_pkg(),
)

# needed to nest files under wiringPi subdir
pkg_files(
    name = "include-wiringPi",
    srcs = [
        "@WiringPi//:WiringPiHeaders-group",
        "@WiringPi//:WiringPiDevHeaders-group",
    ],
    prefix = "usr/local/include/wiringPi",
    strip_prefix = strip_prefix.from_pkg(),
)

pkg_files(
    name = "binaries",
    srcs = [
        "@AMBEserver//:AMBEserver-bin",
        "@APRSGateway//:APRSGateway-bin",
        "@DAPNETGateway//:DAPNETGateway-bin",
        "@DMRGateway//:DMRGateway-bin",
        "@ircDDBGateway//:aprstransmitd-bin",
        "@ircDDBGateway//:ircddbgatewayd-bin",
        "@ircDDBGateway//:remotecontrold-bin",
        "@ircDDBGateway//:starnetserverd-bin",
        "@ircDDBGateway//:texttransmitd-bin",
        "@ircDDBGateway//:timercontrold-bin",
        "@ircDDBGateway//:timeserverd-bin",
        "@ircDDBGateway//:voicetransmitd-bin",
        "@M17Gateway//:M17Gateway-bin",
        "@MMDVM_CM//:DMR2NXDN-bin",
        "@MMDVM_CM//:DMR2YSF-bin",
        "@MMDVM_CM//:YSF2DMR-bin",
        "@MMDVM_CM//:YSF2NXDN-bin",
        "@MMDVM_CM//:YSF2P25-bin",
        "@MMDVM_CM//:NXDN2DMR-bin",
        "@MMDVMCal//:MMDVMCal-bin",
        "@MMDVMHost//:MMDVMHost-bin",
        "@MMDVMHost//:MMDVMHost_Adafruit-bin",
        "@MMDVMHost//:RemoteCommand-bin",
        "@NextionDriver//:NextionDriver-bin",
        "@NXDNClients//:NXDNGateway-bin",
        "@NXDNClients//:NXDNParrot-bin",
        "@OpenDV//:dstarrepeaterdaemon-bin",
        "@P25Clients//:P25Gateway-bin",
        "@P25Clients//:P25Parrot-bin",
        "@teensy_loader_cli//:teensy_loader_cli-bin",
        "@YSFClients//:DGIdGateway-bin",
        "@YSFClients//:YSFGateway-bin",
        "@YSFClients//:YSFParrot-bin",
    ],
    prefix = "usr/local/bin",
    strip_prefix = strip_prefix.from_pkg(""),
)

pkg_files(
    name = "scripts",
    srcs = [
        "@Pi-Star_Binaries_sbin//:Pi-Star_Binaries_sbin",
    ],
    prefix = "usr/local/sbin",
    strip_prefix = strip_prefix.from_pkg(""),
)

pkg_zip(
    name = "package",
    srcs = [
        ":wrappers",
        ":binaries",
        ":scripts",
        ":libs",
        ":include-wiringPi",
        "//platform:platformDetect",
        ":rpi-firmware",
        ":rpi-overlay-includes",
    ],
)
