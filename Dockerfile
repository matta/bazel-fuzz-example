from ubuntu:latest
RUN apt update && \
apt install -y curl python3 python3-distutils clang && \
curl -L "https://github.com/bazelbuild/bazelisk/releases/download/v1.12.0/bazelisk-linux-amd64" > /usr/local/bin/bazel && \
chmod +x /usr/local/bin/bazel
