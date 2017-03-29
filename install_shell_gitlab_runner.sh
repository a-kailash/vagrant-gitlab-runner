#!/bin/bash
set -e
set -x
echo "Add GitLabs Official repository"
curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.rpm.sh | sudo bash

echo "Install GitLab Runner"
sudo yum install -y gitlab-ci-multi-runner
sudo systemctl restart gitlab-runner



gitlab-ci-multi-runner register --non-interactive --url $CIURL --registration-token $TOKEN --name $NAME --tag-list 'shell' --executor shell
