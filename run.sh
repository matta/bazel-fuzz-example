#!/usr/bin/env bash

bazel run --config=asan-libfuzzer //:fuzz_test_run
