workspace(name = "Pi-Star-Binaries")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_foreign_cc",
    sha256 = "3532309683de1156223e99190ae2ef0d7fc42300608547686644e237aaeff8a4",
    strip_prefix = "rules_foreign_cc-5bb0829e35401e8c9a700e48a1c40e35081eca65",
    url = "https://github.com/bazelbuild/rules_foreign_cc/archive/5bb0829e35401e8c9a700e48a1c40e35081eca65.tar.gz",
)

load("@rules_foreign_cc//foreign_cc:repositories.bzl", "rules_foreign_cc_dependencies")

rules_foreign_cc_dependencies()

http_archive(
    name = "rules_pkg",
    sha256 = "5909da90955dbb0eb434724f951f1f947a1794c5f33e345175a0193972aac14d",
    strip_prefix = "rules_pkg-7f7bcf9c93bed9ee693b5bfedde5d72f9a2d6ea4",
    url = "https://github.com/bazelbuild/rules_pkg/archive/7f7bcf9c93bed9ee693b5bfedde5d72f9a2d6ea4.tar.gz",
)

load("@rules_pkg//pkg:deps.bzl", "rules_pkg_dependencies")

rules_pkg_dependencies()

http_archive(
    name = "rules_sh",
    # Replace git revision and sha256.
    # sha256 = "0000000000000000000000000000000000000000000000000000000000000000",
    strip_prefix = "rules_sh-06170f1fbff23f900bc04dfbdb75ed1acf2b8c42",
    urls = ["https://github.com/tweag/rules_sh/archive/06170f1fbff23f900bc04dfbdb75ed1acf2b8c42.tar.gz"],
)

load("@rules_sh//sh:repositories.bzl", "rules_sh_dependencies")

rules_sh_dependencies()

load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

new_git_repository(
    name = "AMBEserver",
    branch = "master",
    remote = "https://github.com/marrold/AMBEServer.git",
    build_file = "AMBEserver/BUILD",
    patch_cmds = [
        "bash -c 'echo \"const char *gitversion = \\\"`git rev-parse HEAD`\\\";\" > GitVersion.h'",
    ],
)

new_git_repository(
    name = "APRSGateway",
    branch = "master",
    remote = "https://github.com/g4klx/APRSGateway.git",
    build_file = "APRSGateway/BUILD",
)

new_git_repository(
    name = "ircDDBGateway",
    branch = "master",
    remote = "https://github.com/g4klx/ircDDBGateway.git",
    build_file = "ircDDBGateway/BUILD",
)

new_git_repository(
    name = "DAPNETGateway",
    branch = "master",
    remote = "https://github.com/g4klx/DAPNETGateway.git",
    build_file = "DAPNETGateway/BUILD",
)

new_git_repository(
    name = "YSFClients",
    branch = "master",
    remote = "https://github.com/g4klx/YSFClients.git",
    build_file = "YSFClients/BUILD",
    patch_cmds = [
        "bash -c 'echo \"const char *gitversion = \\\"`git rev-parse HEAD`\\\";\" > DGIdGateway/GitVersion.h'",
        "bash -c 'echo \"const char *gitversion = \\\"`git rev-parse HEAD`\\\";\" > YSFParrot/GitVersion.h'",
        "bash -c 'echo \"const char *gitversion = \\\"`git rev-parse HEAD`\\\";\" > YSFGateway/GitVersion.h'",
        # Remove forced rebuild of GitVersion.h
        "sed -i 's/.PHONY: GitVersion.h//g' DGIdGateway/Makefile",
        "sed -i 's/.PHONY: GitVersion.h//g' YSFGateway/Makefile",
        "sed -i 's/.PHONY: GitVersion.h//g' YSFParrot/Makefile",
    ],
)

new_git_repository(
    name = "MMDVM_CM",
    branch = "master",
    remote = "https://github.com/juribeparada/MMDVM_CM.git",
    build_file = "MMDVM_CM/BUILD",
)

new_git_repository(
    name = "DMRGateway",
    branch = "master",
    remote = "https://github.com/g4klx/DMRGateway.git",
    build_file = "DMRGateway/BUILD",
    patch_cmds = [
        "bash -c 'echo \"const char *gitversion = \\\"`git rev-parse HEAD`\\\";\" > GitVersion.h'",
        # Remove forced rebuild of GitVersion.h
        "sed -i 's/.PHONY: GitVersion.h//g' Makefile",
    ],
)

new_git_repository(
    name = "OpenDV",
    branch = "master",
    remote = "https://github.com/dl5di/OpenDV.git",
    build_file = "OpenDV/BUILD",
    strip_prefix = "DStarRepeater",
)

new_git_repository(
    name = "M17Gateway",
    branch = "main",
    remote = "https://github.com/g4klx/M17Gateway.git",
    build_file = "M17Gateway/BUILD",
    patch_cmds = [
        "bash -c 'echo \"const char *gitversion = \\\"`git rev-parse HEAD`\\\";\" > GitVersion.h'",
        # Remove forced rebuild of GitVersion.h
        "sed -i 's/.PHONY: GitVersion.h//g' Makefile",
    ],
)

new_git_repository(
    name = "MMDVMCal",
    branch = "master",
    remote = "https://github.com/g4klx/MMDVMCal.git",
    build_file = "MMDVMCal/BUILD",
)

new_git_repository(
    name = "MMDVMHost",
    branch = "master",
    remote = "https://github.com/g4klx/MMDVMHost.git",
    build_file = "MMDVMHost/BUILD",
    patch_cmds = [
        "bash -c 'echo \"const char *gitversion = \\\"`git rev-parse HEAD`\\\";\" > GitVersion.h'",
        "sed -i 's/CFLAGS  =/override CFLAGS += $(CPPFLAGS)/' Makefile.Pi.Adafruit",
        "sed -i 's/LDFLAGS =/override LDFLAGS +=/' Makefile.Pi.Adafruit",
        "sed -i 's/$(CXX) $(OBJECTS) $(CFLAGS) $(LIBS) -o MMDVMHost/$(CXX) $(OBJECTS) $(CFLAGS) $(LIBS) $(LDFLAGS) -o MMDVMHost/' Makefile.Pi.Adafruit",
        "sed -i 's/LogMessage(\"Built %s %s (GitID #%.7s)\", __TIME__, __DATE__, gitversion);/LogMessage(\"Built (GitID #%.7s)\", gitversion);/' MMDVMHost.cpp",
    ],
)

new_git_repository(
    name = "WiringPi",
    branch = "master",
    remote = "https://github.com/WiringPi/WiringPi.git",
    build_file = "WiringPi/BUILD",
    patch_cmds = [
        "sed -i 's/CFLAGS	=/override CFLAGS += $(CPPFLAGS)/' devLib/Makefile",
    ],
)

new_git_repository(
    name = "NextionDriver",
    branch = "master",
    remote = "https://github.com/on7lds/NextionDriver.git",
    build_file = "NextionDriver/BUILD",
)

new_git_repository(
    name = "NXDNClients",
    branch = "master",
    remote = "https://github.com/g4klx/NXDNClients.git",
    build_file = "NXDNClients/BUILD",
)

new_git_repository(
    name = "P25Clients",
    branch = "master",
    remote = "https://github.com/g4klx/P25Clients.git",
    build_file = "P25Clients/BUILD",
)

new_git_repository(
    name = "teensy_loader_cli",
    branch = "master",
    remote = "https://github.com/PaulStoffregen/teensy_loader_cli.git",
    build_file = "teensy_loader_cli/BUILD",
)
