#!/bin/bash -x

sudo podman run \
    --rm \
    -p 9080:9080 \
    --cap-add=CHECKPOINT_RESTORE \
    --cap-add=SETPCAP \
    --security-opt seccomp=unconfined \
    --security-opt systempaths=unconfined \
    --env SPRING_DATASOURCE_URL=jdbc:postgresql://9.41.100.55:5432/database \
    --env SPRING_DATASOURCE_PASSWORD=prodPW \
    crac-db-sample


