load("@io_bazel_rules_go//go:def.bzl", "go_binary")

cc_binary(
    name = "hello",
    srcs = ["main.cpp"],
)

go_binary(
    name = "hello_cgo",
    srcs = ["main.go"],
    cgo = True,
)
