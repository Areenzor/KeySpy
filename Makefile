# Project Variables
PYTHON := python3
PIP := pip3
ENV := .env
SRC := src/
TESTS := tests/
REQ := requirements.txt
DEV_REQ := requirements-dev.txt

# Installation Commands
.PHONY: install
install: ## Install core dependencies
	$(PIP) install -r $(REQ)

.PHONY: install-dev
install-dev: ## Install development dependencies
	$(PIP) install -r $(DEV_REQ)

.PHONY: setup
setup: ## Set up virtual environment and install all dependencies
	$(PYTHON) -m venv $(ENV)
	$(ENV)/bin/$(PIP) install -r $(REQ)
	$(ENV)/bin/$(PIP) install -r $(DEV_REQ)

# Code Quality Checks
.PHONY: lint
lint: ## Run Flake8 linter for syntax and style checks
	flake8 $(SRC) $(TESTS)

.PHONY: format
format: ## Format code using Black and sort imports with isort
	black $(SRC) $(TESTS)
	isort $(SRC) $(TESTS)

.PHONY: check-format
check-format: ## Check code formatting without making changes
	black --check $(SRC) $(TESTS)
	isort --check-only $(SRC) $(TESTS)

# Testing and Coverage
.PHONY: test
test: ## Run all tests with Pytest
	pytest $(TESTS)

.PHONY: test-coverage
test-coverage: ## Run tests with coverage reporting
	pytest --cov=$(SRC) --cov-report=term --cov-report=html

# Security Scanning
.PHONY: security-check
security-check: ## Run Bandit security linter
	bandit -r $(SRC)

.PHONY: dependency-audit
dependency-audit: ## Check dependencies for known vulnerabilities
	pip-audit -r $(REQ)

# Clean Up Commands
.PHONY: clean
clean: ## Remove temporary files and caches
	find . -type f -name "*.pyc" -delete
	find . -type d -name "__pycache__" -exec rm -rf {} +
	rm -rf .pytest_cache .coverage htmlcov

.PHONY: clean-env
clean-env: ## Remove the virtual environment folder
	rm -rf $(ENV)

# Documentation Generation
.PHONY: docs
docs: ## Generate Sphinx documentation
	sphinx-build -b html docs/ docs/_build/html

.PHONY: serve-docs
serve-docs: ## Serve Sphinx documentation locally
	python -m http.server --directory docs/_build/html 8000

# Help Section
.PHONY: help
help: ## Show this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
