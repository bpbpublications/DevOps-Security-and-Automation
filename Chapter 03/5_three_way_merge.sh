# Start from main branch
git checkout main

# Create and switch to a feature branch
git checkout -b feature-login

# Make some changes in feature branch
echo "Login functionality" > login.py
git add login.py
git commit -m "Add login module"

# Switch back to main and make different changes
git checkout main
echo "Main application update" > main.py
git add main.py
git commit -m "Update main application"

# Now merge the feature branch
# This will create a new merge commit
git merge feature-login
