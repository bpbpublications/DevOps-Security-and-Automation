# Pre-commit hook example
#!/bin/bash
# Run linting
npm run lint || exit 1
# Run unit tests
npm run test:unit || exit 1
# Run security checks
npm audit || exit 1
