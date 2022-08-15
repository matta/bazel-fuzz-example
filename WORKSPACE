load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

# http_archive(
#     name = "rules_fuzzing",
#     sha256 = "23bb074064c6f488d12044934ab1b0631e8e6898d5cf2f6bde087adb01111573",
#     strip_prefix = "rules_fuzzing-0.3.1",
#     urls = ["https://github.com/bazelbuild/rules_fuzzing/archive/v0.3.1.zip"],
# )

# For now, depend on a specific git revision to get newer Python treatment.
# See:
# https://github.com/bazelbuild/rules_fuzzing/issues/207
# https://github.com/bazelbuild/rules_fuzzing/pull/208
git_repository(
    name = "rules_fuzzing",
    remote = "https://github.com/bazelbuild/rules_fuzzing.git",
    commit = "77bb2af4ee076e0706bb14fb5d62b108043624e1",
    shallow_since = "1660592161 +0000",
)

load("@rules_fuzzing//fuzzing:repositories.bzl", "rules_fuzzing_dependencies")

rules_fuzzing_dependencies()

load("@rules_fuzzing//fuzzing:init.bzl", "rules_fuzzing_init")

rules_fuzzing_init()
