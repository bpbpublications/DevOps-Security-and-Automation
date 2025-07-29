# Always start from the main branch
$ git checkout main
$ git pull origin main

# Create a very short-lived feature branch
$ git checkout -b feature/quick-update

# Make minimal, focused changes
$ git add .
$ git commit -m "Implement quick performance optimization"

# Merge back to main quickly
$ git checkout main
$ git merge --no-ff feature/quick-update

# Push changes
$ git push origin main
