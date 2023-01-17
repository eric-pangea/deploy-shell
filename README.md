# repo-dispatch-shell

## Setup

Add this to the dispatching repo: 

      - name: Repo Dispatch Shell
        # checks all steps before have finshed
        if: ${{ success() }}
        # required to run
        uses: eric-pangea/deploy-shell@main
        with:
          # Personal access token
          token: ${{ secrets.PAT }}
          # the name of each repository with a space between each one (ex: microsoft/calculator )
          repos: ACCOUNT/REPO1 ACCOUNT/REPO2
          
          
Add this to the dispatched repo(s):

        repository_dispatch:
          types: [repo-dispatch]
