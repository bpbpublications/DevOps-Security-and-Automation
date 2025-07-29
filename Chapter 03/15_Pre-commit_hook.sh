#!/bin/sh
# Run flake8 before allowing commit
flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics
if [ $? -ne 0 ]; then
    echo "Code does not meet linting standards"
    exit 1
fi
