#!/bin/sh

for REPO in $@; do
	curl \
	  -X POST \
	  -H "Accept: application/vnd.github+json" \
	  -H "Authorization: Bearer $MY_GIT_PAT \
	  -H "X-GitHub-Api-Version: 2022-11-28" \
	  https://api.github.com/repos/eric-pangea/testrepo2/dispatches \
	  -d '{"event_type":"test-event"}'
done
