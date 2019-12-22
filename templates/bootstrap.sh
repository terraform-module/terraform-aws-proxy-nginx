#!/bin/sh
set -euo
AWS_REGION=${region}
/usr/bin/curl -L https://github.com/docker/compose/releases/download/${docker_compose_version}/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
systemctl start docker
systemctl enable docker
docker-compose -f /opt/docker-compose.yml up -d
