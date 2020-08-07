# syntax = docker/dockerfile:experimental
FROM buildstream/buildstream:dev

RUN pip install bst-plugins-experimental

COPY . /scratch
WORKDIR /scratch

RUN bst source track platform.bst

# Needs capabilities for buildbox to run fuse
RUN --security=insecure bst build serf.bst