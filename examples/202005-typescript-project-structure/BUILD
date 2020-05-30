load("@rules_tsc_compile//defs.bzl", "tsc_root")

tsc_root(
    name = "tsconfig",
    tsconfig = "tsconfig.json",
    tsc_modules = [
        "//boat:tsconfig",
        "//shipping-container-types:tsconfig",
        "//truck:tsconfig"
    ],
)

