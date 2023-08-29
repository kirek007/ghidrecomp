# This Dockerfile uses the ghidra-python image and installs the latest ghidrecomp
# [Choices] see https://github.com/clearbluejar/ghidra-python/pkgs/container/ghidra-python
ARG VARIANT=latest
FROM ghcr.io/clearbluejar/ghidra-python:${VARIANT}

WORKDIR /home/vscode/

COPY . ghidrecomp
# Install ghidrecomp
RUN su vscode -c "cd ghidrecomp && pip install -e ." 2>&1

# runs as a standard user
USER vscode


