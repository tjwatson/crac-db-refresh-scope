#!/bin/bash -x

sudo podman build \
   -f Dockerfile.og \
   -t crac-db-sample-og \
   --no-cache \
   --cap-add=CHECKPOINT_RESTORE \
   --cap-add=SYS_PTRACE\
   --cap-add=SETPCAP \
   --security-opt seccomp=unconfined .


