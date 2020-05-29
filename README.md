# rules_typescript_compiler

rules_typescript_compiler has 3 goals.

1. standard tooling from the typescript community works (standard tsc, IDE support, etc)
1. incremental test execution
1. parallel test execution

The fallout from these 3 goals is tsconfig.json is 
the driver for the project layout (as opposed to bazel build files).
Bazel test targets sit in modules described by tsconfig.json.

rules_typescript_compiler works well in multi language projects, and does not have any opinion about what type of framework you use for typescript (hem hem angular)
