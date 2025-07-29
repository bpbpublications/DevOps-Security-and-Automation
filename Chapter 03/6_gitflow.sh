# Initialize Gitflow in an existing repository
$ git flow init

# Start a new feature
$ git flow feature start user-authentication

# Finish a feature (merges back to develop)
$ git flow feature finish user-authentication

# Start a release
$ git flow release start 1.0.0

# Finish a release (merges to main and develop)
$ git flow release finish 1.0.0
