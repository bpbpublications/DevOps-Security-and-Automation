# Short-lived feature branch
$ git checkout -b feature/quick-update main
$ git commit -m "Implement performance optimization"

# Rapid merge back to main
$ git checkout main
$ git merge --no-ff feature/quick-update
$ git push origin main
