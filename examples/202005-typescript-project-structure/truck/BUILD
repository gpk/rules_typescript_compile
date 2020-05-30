load("@rules_tsc_compile//defs.bzl", "tsc_module")
load("@rules_mocha//defs.bzl", "mocha_test")

tsc_module(
    name = "tsconfig",
    tsconfig = "tsconfig.json",
    srcs = glob(["src/*.ts"]),
    tests = glob(["tests/*.ts"])
)

mocha_test(
    name = "unit",
    deps = ["@tsc//src/truck:ts_test_lib"]
)
