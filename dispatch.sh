#!/bin/bash

for REPO in $@; do
	echo "dispatching $REPO"
 	curl \
 	  -X POST \
 	  -H "Accept: application/vnd.github+json" \
 	  -H "Authorization: Bearer $MY_GIT_PAT" \
 	  -H "X-GitHub-Api-Version: 2022-11-28" \
 	  https://api.github.com/repos/$REPO/dispatches \
 	  -d '{"event_type":"repo-dispatch"}'
done
