
def _read_bazel_out_impl(ctx):
    print(ctx.path(ctx.attr.rebuild))
    ctx.execute([ctx.path(ctx.attr.timestamper), "local_file"])

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
    },
    implementation = _read_bazel_out_impl,
    local = True,
)
