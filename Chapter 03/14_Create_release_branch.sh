# Create release branch
$ git checkout -b release/v1.2.0 develop

# Perform final testing and stabilization
$ git commit -m "Prepare release 1.2.0"

# Merge to main and develop
$ git checkout main
$ git merge release/v1.2.0
$ git checkout develop
$ git merge release/v1.2.0
