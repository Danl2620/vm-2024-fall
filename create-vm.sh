#!/usr/bin/env bash

set -e -o pipefail

doctl compute droplet create \
    --image ubuntu-24-04-x64 \
    --size s-2vcpu-4gb-amd \
    --region sfo3 \
    --project-id first-project \
    --ssh-keys "6c:73:c3:96:b3:b9:de:48:5d:18:91:14:e6:c8:30:e7" \
    --user-data-file ./user-data-file.yaml \
    --wait \
    mc-sfo3-01
