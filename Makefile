.PHONY: all ci install format format-check lint serve clean help

all: ci

# Run all CI checks locally
ci: install lint
	@echo "✓ All CI checks passed"

# Install dependencies
install:
	@npm ci

# Format code with Prettier
format:
	@npm run format

# Check formatting (CI)
format-check:
	@npm run format:check

# Run all linting checks
lint: format-check check-files
	@echo "✓ Lint checks passed"

# Check required files exist
check-files:
	@test -f index.html && echo "✓ index.html exists"
	@test -f README.md && echo "✓ README.md exists"
	@test -f package.json && echo "✓ package.json exists"

# Start local development server
serve:
	@npm run serve

# Clean generated files
clean:
	@rm -rf node_modules
	@echo "✓ Cleaned node_modules"

# Show help
help:
	@echo "Available targets:"
	@echo "  make ci           - Run all CI checks locally"
	@echo "  make install      - Install dependencies"
	@echo "  make format       - Format code with Prettier"
	@echo "  make format-check - Check formatting (CI)"
	@echo "  make lint         - Run all linting checks"
	@echo "  make serve        - Start local dev server"
	@echo "  make clean        - Remove node_modules"
