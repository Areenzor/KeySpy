import setuptools

# Read the content of README file for the long description
with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

# Dynamically load version from a version file
def read_version():
    with open("src/project_name/_version.py") as f:
        globals = {}
        exec(f.read(), globals)
        return globals["__version__"]

setuptools.setup(
    name="project_name",
    version=read_version(),
    author="Your Name",
    author_email="your.email@example.com",
    description="A brief description of the project",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/yourusername/project_name",
    project_urls={
        "Bug Tracker": "https://github.com/yourusername/project_name/issues",
        "Documentation": "https://yourdocslink.com",
        "Source Code": "https://github.com/yourusername/project_name",
    },
    license="MIT",
    classifiers=[
        "Development Status :: 5 - Production/Stable",
        "Intended Audience :: Developers",
        "License :: OSI Approved :: MIT License",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.8",
        "Programming Language :: Python :: 3.9",
        "Programming Language :: Python :: 3.10",
        "Topic :: Software Development :: Libraries",
        "Topic :: Security",
    ],
    keywords="cybersecurity, keylogger, encryption, security",
    packages=setuptools.find_packages(where="src"),
    package_dir={"": "src"},
    python_requires=">=3.8",
    install_requires=[
        "flask==2.1.3",
        "requests==2.31.0",
        "pynput==1.7.6",
        "cryptography==39.0.1",
        "pycryptodome==3.17",
        "loguru==0.6.0",
    ],
    extras_require={
        "dev": [
            "black==23.3.0",
            "flake8==6.0.0",
            "isort==5.12.0",
            "pytest==7.2.2",
            "pytest-cov==4.0.0",
            "tox==4.5.2",
            "sphinx==5.3.0",
            "sphinx-rtd-theme==1.2.0",
        ],
        "security": [
            "bandit==1.7.4",
            "pip-audit==0.3.14",
        ],
    },
    entry_points={
        "console_scripts": [
            "project_name=project_name.cli:main",
        ],
    },
    include_package_data=True,
    zip_safe=False,
    package_data={
        # Include any config or data files here
        "": ["*.yaml", "*.json", "*.txt"],
    },
    data_files=[
        ("config", ["config/default.yaml"]),
    ],
    test_suite="tests",
    tests_require=["pytest"],
)
