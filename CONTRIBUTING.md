# **Contributing to Keyspy**

Thank you for your interest in contributing to **Keyspy**! Contributions are essential to improving the project, and we’re excited to collaborate with you. Whether you're reporting a bug, suggesting a feature, or writing code, your input helps make Keyspy better.

---

## **Table of Contents**

1. [Code of Conduct](#code-of-conduct)
2. [How Can I Contribute?](#how-can-i-contribute)
   - [Reporting Bugs](#reporting-bugs)
   - [Suggesting Features](#suggesting-features)
   - [Improving Documentation](#improving-documentation)
   - [Contributing Code](#contributing-code)
3. [Development Workflow](#development-workflow)
4. [Code Style and Standards](#code-style-and-standards)
5. [Commit Message Guidelines](#commit-message-guidelines)
6. [Testing Your Changes](#testing-your-changes)
7. [License](#license)

---

## **Code of Conduct**

We follow the [Contributor Covenant Code of Conduct](CODE_OF_CONDUCT.md). By participating, you agree to uphold a welcoming, inclusive, and harassment-free environment for everyone.

---

## **How Can I Contribute?**

### **Reporting Bugs**
If you find a bug, please create an issue on GitHub. When reporting:
- Use a descriptive title.
- Include steps to reproduce the issue.
- Mention your operating system and Python version.
- Attach logs or screenshots if possible.

---

### **Suggesting Features**
We welcome new ideas to improve Keyspy! When suggesting features:
- Clearly explain the problem the feature solves.
- Provide a detailed description of the feature.
- Include examples or references to similar tools, if applicable.

---

### **Improving Documentation**
Documentation contributions are always appreciated:
- Fix typos or grammatical errors.
- Add examples or detailed explanations.
- Enhance usage guides.

Feel free to submit a pull request for updates to files in the `docs/` folder.

---

### **Contributing Code**
1. **Search Existing Issues**: Check if someone else is already working on the feature or fix you want to contribute.
2. **Claim an Issue**: Comment on the issue you’d like to work on, so we can assign it to you.
3. **Fork the Repository**: Clone your fork locally for development.
   ```bash
   git clone https://github.com/areenzor/keyspy.git
   cd keyspy
   ```

---

## **Development Workflow**

1. **Create a Branch**:
   Use a meaningful name for your branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Write Code**:
   Follow the [Code Style and Standards](#code-style-and-standards).

3. **Test Changes**:
   Ensure all tests pass:
   ```bash
   pytest
   ```

4. **Push to Your Fork**:
   ```bash
   git push origin feature/your-feature-name
   ```

5. **Create a Pull Request**:
   Open a pull request to the `main` branch and provide:
   - A clear title.
   - A description of your changes.
   - References to related issues (if applicable).

---

## **Code Style and Standards**

We adhere to Python's PEP 8 standards for code quality. Use the following tools to maintain consistency:
- **`black`**: For code formatting.
- **`isort`**: To organize imports.
- **`flake8`**: For linting.

### Run the Formatters
```bash
make lint
```

---

## **Commit Message Guidelines**

Use clear and concise commit messages. Follow this format:
```
[Category] Short description (50 characters max)

Longer explanation (if necessary). Describe what changes were made and why.
```

### Categories
- `feat`: New features
- `fix`: Bug fixes
- `docs`: Documentation updates
- `test`: Testing updates
- `chore`: Maintenance tasks

Example:
```
[feat] Add JSON export functionality

Implemented the ability to export logs in JSON format. Updated the CLI options and included tests for the new feature.
```

---

## **Testing Your Changes**

### Run the Test Suite
We use `pytest` for testing. Run the tests locally to ensure your changes do not break existing functionality:
```bash
pytest
```

### Coverage Report
Check the code coverage to verify all parts of the code are tested:
```bash
pytest --cov=keyspy
```

---

## **License**

By contributing to Keyspy, you agree that your contributions will be licensed under the [MIT License](LICENSE).

---

## **Thank You!**

Thank you for taking the time to contribute to Keyspy. Your efforts are invaluable in improving the project and fostering a stronger cybersecurity community.
