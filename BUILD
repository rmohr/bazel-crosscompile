load("@io_bazel_rules_go//go:def.bzl", "go_binary")
load("@bazeldnf//:def.bzl", "bazeldnf")

bazeldnf(name = "bazeldnf")

cc_binary(
    name = "hello",
    srcs = ["main.cpp"],
)

go_binary(
    name = "hello_cgo",
    srcs = ["main.go"],
    cgo = True,
    cdeps = ["//:libvirt-libs"],
)

cc_library(
    name = "libvirt-libs",
    srcs = [
        "//rpm:testtree-libs/usr/lib64",
    ],
    hdrs = [
        "//rpm:testtree-libs/usr/include/libvirt",
    ],
    include_prefix = "libvirt",
    linkstatic = 1,
    strip_include_prefix = "/rpm/testtree-libs/",
    visibility = ["//visibility:public"],
)
