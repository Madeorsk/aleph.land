#!/bin/sh

docker buildx build -t docker.madeorsk.com/aleph.land/mastodon .
docker buildx build -t docker.madeorsk.com/aleph.land/mastodon:streaming -f ./streaming/Dockerfile .

docker push docker.madeorsk.com/aleph.land/mastodon
docker push docker.madeorsk.com/aleph.land/mastodon:streaming
