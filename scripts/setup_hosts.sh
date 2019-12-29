#!/bin/bash

set -euo pipefail

cat <<EOF | sudo tee -a /etc/hosts
10.240.0.10 controller-0
EOF
