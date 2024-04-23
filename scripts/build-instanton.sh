#!/bin/bash -x

sudo podman build \
   -f Dockerfile.instanton \
   -t crac-db-sample \
   --no-cache \
   --cap-add=CHECKPOINT_RESTORE \
   --cap-add=SYS_PTRACE\
   --cap-add=SETPCAP \
   --security-opt seccomp=unconfined .

