workspace(name="example")

load("@example//:defs.bzl", "read_bazel_out")
read_bazel_out(
    name = "test_rule",
    rebuild = "@example//:.bazelexec.stamp",
    timestamper = "@example//:timestamp.sh"
)
