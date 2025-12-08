#!/bin/bash

docker run \
	--rm --interactive --tty \
	--network host \
	--volume "$PWD":"$PWD" \
	--workdir "$PWD" \
	--user $(id -u):$(id -g) \
	--env HOME=/tmp/npm-home \
	node:22-bullseye \
	/bin/bash -c "npm install && npm run build"

docker run \
	--rm --interactive --tty \
	--network host \
	--volume "$PWD":"$PWD" \
	--workdir "$PWD" \
	--user $(id -u):$(id -g) \
	--env HOME=/tmp/npm-home \
	node:22-bullseye \
	/bin/bash -c "npm install wrangler && npx wrangler pages deploy dist"
