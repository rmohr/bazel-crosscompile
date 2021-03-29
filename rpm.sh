bazel run //:bazeldnf -- fetch
bazel run //:bazeldnf -- rpmtree --public --arch=aarch64 --name testtree \
    glibc-langpack-en coreutils-single libcurl-minimal curl-minimal fedora-logos-httpd vim-minimal \
    libvirt-devel lz4-libs
bazel run //:bazeldnf prune
bazel build //rpm:testtree
bazel run //rpm:ldd
