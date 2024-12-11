#!/bin/bash

BASE_DIR=$(dirname $0)

GITHUB_USER=$(gh api /user --jq '.login')
REPOSITORY="ci_cd_infra_setup"
VARS_DIR="$BASE_DIR/playbooks/roles/self_hosted_runner/vars"
VARS_FILE="$BASE_DIR/playbooks/roles/self_hosted_runner/vars/main.yml"

if [ ! -d "$VARS_DIR" ]; then
  mkdir -p "$VARS_DIR"
fi

REGISTRATION_TOKEN=$(gh api --method POST \
    -H "Accept: application/vnd.github+json" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    /repos/$GITHUB_USER/$REPOSITORY/actions/runners/registration-token \
    --jq '.token')

echo "Overriding file: $VARS_FILE"
echo "TOKEN: $REGISTRATION_TOKEN" > $VARS_FILE
