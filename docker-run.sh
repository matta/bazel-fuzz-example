#!/usr/bin/env bash

build_output="/tmp/build_output_bazel_fuzz_$(id -u)"
mkdir -p "${build_output}"

toplevel="$(git rev-parse --show-toplevel)"

set -x
# docker run \
#        -e USER="$(id -un)" \
#        -u="$(id -u)" \
#        -v "$(pwd):$(pwd)" \
#        -v "${build_output}:${build_output}" \
#        -w "$(pwd)" \
#        l.gcr.io/google/bazel:latest \
#        --output_user_root="${build_output}" \
#        bash

#docker run -it --entrypoint=/bin/bash l.gcr.io/google/bazel:latest
# docker run \
#        -it \
#        --entrypoint=/bin/bash \
#        --env=USER="$(id -un)" \
#        --volume="${toplevel}":/source \
#        --volume="${build_output}":"${build_output}" \
#        --workdir=/source \
#        l.gcr.io/google/bazel:latest

image=bazel-fuzz-dev

set -x
docker build -t "${image}" . && \
docker run -it \
       --volume="${toplevel}":/src \
       --workdir=/src \
       "${image}" \
       /bin/bash
