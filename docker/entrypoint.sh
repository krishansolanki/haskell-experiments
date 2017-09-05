#!/bin/bash
set -xe

# Create external user and group unless already exists for this name
groupadd --non-unique -g "${EXTERNAL_GID?}" external
useradd --non-unique -M -u "${EXTERNAL_GID?}" -g "${EXTERNAL_GID?}" external

# Execute docker command
"$@"

echo Done.