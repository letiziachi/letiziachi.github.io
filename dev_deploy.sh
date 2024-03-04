#!/bin/bash

docker run \
        --rm --interactive --tty \
        --network host \
        --volume "$PWD":"$PWD" \
        --workdir "$PWD" \
        node:19-bullseye \
	/bin/bash -c "npm install && npx astro dev --host"

