exports_files(["timestamp.sh", ".bazelexec.stamp"])

sh_binary(
    name = "woot",
    args = ["$(location @test_rule//:local_file)"],
    srcs = ["sh_test.sh"],
    data = ["@test_rule//:local_file"]
)

