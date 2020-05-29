workspace(name="example")

load("@example//:defs.bzl", "read_bazel_out")
read_bazel_out(
    name = "test_rule",
    typescript_out = "~/tmpdirfoo",
    rebuild = "@example//:.bazelexec.stamp",
    timestamper = "@example//:timestamp.sh"
)
