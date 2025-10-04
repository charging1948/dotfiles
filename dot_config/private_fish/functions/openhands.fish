function openhands
    set -l OPENHANDS_VERSION 0.58
    set -l OPENHANDS_RUNTIME docker.all-hands.dev/all-hands-ai/runtime:$OPENHANDS_VERSION-nikolaik
    set -l OPENHANDS_IMAGE docker.all-hands.dev/all-hands-ai/openhands:$OPENHANDS_VERSION

    set -l FLAGS \
      -it \
      --rm \
      -e "SANDBOX_RUNTIME_CONTAINER_IMAGE=$OPENHANDS_RUNTIME" \
      # NOTE: `:Z` mount flag fixes SELinux permission errors
      -e "SANDBOX_VOLUMES=$PWD:/workspace:Z" \
      -e LOG_LEVEL=debug \
      -e DEBUG=true \
      -e LOG_ALL_EVENTS=true \
      # NOTE: Use Docker host env, but strip protocol prefix
      -v (string replace -r '^.*://' '' $DOCKER_HOST):/var/run/docker.sock \
      # NOTE: Updated volume mount
      -v ~/.openhands:/.openhands \
      --security-opt label=disable \
      -p 3000:3000 \
      --add-host host.docker.internal:host-gateway \
      --name openhands-app \
      "$OPENHANDS_IMAGE"

    podman pull "$OPENHANDS_RUNTIME"
    podman pull "$OPENHANDS_IMAGE"
    podman run $FLAGS
end
