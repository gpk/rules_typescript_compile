workspace(name="example")

load("@example//:defs.bzl", "read_bazel_out")
read_bazel_out(
    name = "test_rule",
    typescript_out = "typescript_out",
    rebuild = "@example//:.bazelexec.stamp",
    timestamper = "@example//:timestamp.sh"
)
