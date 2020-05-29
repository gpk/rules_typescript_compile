
def _read_bazel_out_impl(ctx):
    ctx.path(ctx.attr.rebuild)

    print(ctx.attr.typescript_out)
    ctx.execute([ctx.path(ctx.attr.timestamper), ctx.attr.typescript_out, "local_file"])

    ctx.file(
        "BUILD",
        "exports_files(['local_file'])"
    )

read_bazel_out = repository_rule(
    doc = """
    """,
    attrs = {
        "rebuild": attr.label(allow_single_file=True),
        "timestamper": attr.label(allow_single_file = True),
        "typescript_out": attr.string(doc = "path relative to workspace to put the typescript output"),
    },
    implementation = _read_bazel_out_impl,
    local = True,
)
