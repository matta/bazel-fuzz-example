{ pkgs ? import <nixpkgs> {} }:

(pkgs.buildFHSUserEnv {
  name = "bazel-userenv-example";
  targetPkgs = pkgs: [
    pkgs.bazel_4
    #pkgs.glibc
    pkgs.clang_14

    pkgs.which
 ];
}).env
