load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

URL = "http://repo.ltekieli.com:8080/"

def toolchains():
    if "aarch64-rpi3-linux-gnu" not in native.existing_rules():
        http_archive(
            name = "aarch64-rpi3-linux-gnu",
            build_file = Label("//third_party/toolchains:aarch64-rpi3-linux-gnu.BUILD"),
            url = URL + "aarch64-rpi3-linux-gnu.tar.gz",
            sha256 = "7b4d10bc0d30c699d5ee99504f32b9b6d23bec314344c8173649f0e9b9ba0617",
        )

    if "aarch64-buildroot-linux-gnu-sysroot" not in native.existing_rules():
        http_archive(
            name = "aarch64-buildroot-linux-gnu-sysroot",
            build_file = Label("//third_party/toolchains:aarch64-buildroot-linux-gnu-sysroot.BUILD"),
            url = URL + "aarch64-buildroot-linux-gnu-sysroot.tar.gz",
            sha256 = "1c5845ac45c31b1dc9892bbb8ca77531a7ea8c6c80d8ad4cc1db1225060a7fe5",
        )
