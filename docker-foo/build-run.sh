#!/usr/bin/bash

docker image rm --force  foo:latest &&
docker build --progress=plain --no-cache --tag foo:latest .
docker run --rm -it foo:latest
