# Create and switch to main branch
git checkout main

# Create a new feature branch
git checkout -b feature-update

# Make some changes in the feature branch
echo "New feature implementation" > feature.txt
git add feature.txt
git commit -m "Add new feature"

# Switch back to main
git checkout main

# Merge the feature branch
# Since no changes were made in main, this is a fast-forward merge
git merge feature-update

# The merge is straightforward - it simply moves the main branch pointer
