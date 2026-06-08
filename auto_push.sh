#!/bin/bash
REPO_DIR="/home/user/julien_workspace/docker_shared_folder"

cd $REPO_DIR

while true; do
  if ! git status | grep -q "nothing to commit"; then
    git add -A
    git commit -m "auto: new plots $(date '+%Y-%m-%d %H:%M:%S')"
    git push
  fi
  sleep 30
done
