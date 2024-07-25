# Setting Up a Python Development Environment

🟩 **Beginner** (No prior experience required)

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Virtual Environments](#virtual-environments)
  - [venv](#venv)
  - [virtualenv](#virtualenv)
  - [Conda](#conda)
  - [Poetry](#poetry)
- [Conclusion](#conclusion)
- [References](#references)
  - [Links to Official Documentation](#links-to-official-documentation)
  - [Additional Resources for Learning](#additional-resources-for-learning)

<br>

## Introduction

### What is a Development Environment?

A development environment is a setup that includes all the necessary tools, libraries, and configurations required to write, test, and debug code. In the context of Python, a development environment typically includes the Python interpreter, a code editor or Integrated Development Environment (IDE), and various libraries and packages that your project depends on.

### Why Do You Need a Development Environment?

Setting up a development environment is crucial for several reasons:

1. **Isolation**: It allows you to isolate your project dependencies, preventing conflicts between different projects that may require different versions of the same library.
2. **Reproducibility**: It ensures that your project can be easily reproduced on different machines, making collaboration and deployment more straightforward.
3. **Organization**: It helps keep your project organized by managing dependencies and configurations in a structured manner.
4. **Efficiency**: It streamlines the development process by providing tools and configurations that enhance productivity.

### What This Tutorial Will Cover

In this tutorial, we will guide you through setting up a Python development environment using various tools and methods. Specifically, we will cover:

- **venv**: The built-in Python module for creating virtual environments.
- **virtualenv**: A third-party tool that provides more features than venv.
- **Conda**: A package and environment management system that is particularly useful for data science projects.
- **Poetry**: A dependency management tool that also handles virtual environments.

By the end of this tutorial, you will have a solid understanding of how to set up and manage virtual environments using these tools, ensuring that your Python projects are well-organized and isolated from each other.

Let's get started!

<br>

## Prerequisites

🔴 This tutorial assumes you have Python 3.x and a dedicated Text Editor or IDE installed. If not, we recommend starting with [A Method to Learn Python from scratch](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Python/A-Method-to-Learn-Python-from-scratch.md) tutorial before proceeding.

Before diving into setting up your Python development environment, ensure you have the following prerequisites in place:

### 1. Basic Understanding of the Command Line
Command Line Interface (CLI): Familiarity with basic command line operations is essential for setting up and managing virtual environments. This includes navigating directories, running commands, and editing files.

🟢 If you are new to the command line, consider checking out our [tutorial](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Basic-Understanding-of-the-Command-Line.md) to get comfortable with basic commands.

### 2. Internet Connection
Downloads and Installations: You will need an internet connection to download and install the necessary tools and packages.

### 3. Administrative Privileges
Permissions: Ensure you have the necessary administrative privileges to install software on your system.

### 4. Optional: Version Control System (VCS)
Git: While not strictly required, having Git installed can be beneficial for version control and collaboration. You can download Git from the official Git website.

🟢 If you are new to the Version Control System (VCS), consider Checking out our [Tutorial](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Python/Introduction-to-Version-Control-System.md) to get comfortable with basics of git.

By ensuring you have these prerequisites in place, you will be well-prepared to follow along with the tutorial and set up your Python development environment effectively.

<br>

## Virtual Environments

### venv

`venv` is a built-in Python module for creating virtual environments. It is included in the Python standard library starting from Python 3.3, making it a convenient and straightforward choice for managing project-specific dependencies.

Since `venv` is part of the Python standard library, you do not need to install it separately. It comes pre-installed with Python.

#### Creating a Virtual Environment

To create a virtual environment using `venv`, follow these steps:

1. **Open a Terminal or Command Prompt**: Navigate to the directory where you want to create your virtual environment.

2. **Create the Environment**: Run the following command to create a virtual environment named `myenv`:

```sh
python -m venv myenv
```

This command will create a directory named myenv containing the virtual environment.

#### Activating and Deactivating the Environment

To activate the virtual environment, use the following commands:

On Windows:

```
myenv\Scripts\activate
```

On macOS and Linux:

```
source myenv/bin/activate
```

Once activated, your command prompt will change to indicate that you are now working within the virtual environment.

To deactivate the virtual environment, simply run:

```
deactivate
```

#### Installing Packages

With the virtual environment activated, you can install packages using pip. For example, to install the requests library, run:

```
pip install requests
```

#### Deleting a Python the Environment

There’s no special command to delete a virtual environment if you used python -m venv to create your virtual environment. When creating the virtualenv, you gave it a directory to create this environment in.

If you want to delete this venv, deactivate it first and then remove the directory with all its content.  simply run :

```
deactivate
```

Then if your virtual environment is in a directory called 'venv':

```
rm -r venv
```

#### Example Workflow

Here is a complete example workflow for setting up and using a venv virtual environment:

Create the Environment:

```
python -m venv myenv
```

Activate the Environment:

```
myenv\Scripts\activate
```

Install Packages:

```
pip install requests
```

Deactivate the Environment:

```
deactivate
```

***venv*** is a simple and effective tool for creating and managing virtual environments in Python. It is ideal for small to medium-sized projects and is easy to use, making it a great choice for beginners.

<br>

### virtualenv

`virtualenv` is a third-party tool for creating isolated Python environments. It is more feature-rich than the built-in `venv` module and is widely used in the Python community. `virtualenv` supports more customization options and works with older versions of Python, making it a versatile choice for various projects.

#### Installation and Setup

To use `virtualenv`, you need to install it first. You can do this using `pip`, the Python package installer.

```sh
pip install virtualenv
```

#### Creating a Virtual Environment

To create a virtual environment using virtualenv, follow these steps:

Open a Terminal or Command Prompt: Navigate to the directory where you want to create your virtual environment.

Run the following command to create a virtual environment named myenv:

```
virtualenv myenv
```

This command will create a directory named myenv containing the virtual environment.

#### Activating and Deactivating the Environment
To activate the virtual environment, use the following commands:

On Windows:

```
myenv\Scripts\activate
```

On macOS and Linux:

```
source myenv/bin/activate
```

Once activated, your command prompt will change to indicate that you are now working within the virtual environment.

To deactivate the virtual environment, simply run:

```
deactivate
```

#### Installing Packages
With the virtual environment activated, you can install packages using pip. For example, to install the requests library, run:

```
pip install requests
```
#### Deleting a Virtual Environment

1. Navigate to the Parent Directory: Open a terminal or command prompt and navigate to the directory that contains your virtual environment.

2. Delete the Virtual Environment Directory using :

* On Windows:

```
rmdir /s /q myenv
```

* On macOS and Linux:

```
rm -rf myenv   
```

#### Additional Features
virtualenv offers several additional features that make it a powerful tool:

* **Custom Python Interpreter** : You can specify a custom Python interpreter when creating the environment.

```
virtualenv -p /path/to/python myenv
```

* **No Site Packages** : By default, virtualenv includes the global site packages. You can exclude them by using the --no-site-packages option.

```
virtualenv --no-site-packages myenv
```

**What Are Site Packages?**

Site packages refer to the collection of Python packages and modules that are installed globally on your system. These packages are typically located in a directory named `site-packages` within your Python installation. When you install a package using `pip` without specifying a virtual environment, it gets installed in the global site-packages directory, making it available to all Python scripts and applications on your system.

**Relevance in Virtual Environments**

When you create a virtual environment, you have the option to include or exclude the global site packages. Including the global site packages means that the virtual environment will have access to all the packages installed globally, in addition to any packages you install specifically within the virtual environment. **Excluding the global site packages ensures that the virtual environment is completely isolated and only contains the packages you explicitly install within it.**

***virtualenv*** is a robust and flexible tool for creating and managing virtual environments in Python. Its additional features and compatibility with older Python versions make it a popular choice for many developers.

<br>

### Conda

`Conda` is a powerful package and environment management system that is particularly popular in the data science community. It allows you to create isolated environments and manage dependencies for Python, R, and other languages. Conda is part of the Anaconda distribution, which includes a wide range of pre-installed packages for data science and machine learning.

#### Installation and Setup

To use Conda, you need to install either the full Anaconda distribution or the lighter Miniconda distribution.

1. **Install Anaconda or Miniconda**:
   - Download and install Anaconda from the [official Anaconda website](https://www.anaconda.com/products/distribution).
   - Alternatively, download and install Miniconda from the [official Miniconda website](https://docs.conda.io/en/latest/miniconda.html).

2. **Verify the Installation**:
   Open a terminal or command prompt and run:

```sh
conda --version
```

#### Creating a Virtual Environment

To create a virtual environment using Conda, follow these steps:

1. Open a Terminal or Command Prompt: Navigate to the directory where you want to create your virtual environment.

2. Run the following command to create a virtual environment named myenv with Python 3.8:

```
conda create --name myenv python=3.8
```

**You can specify other packages or versions as needed.**

#### Activating and Deactivating the Environment

To activate the virtual environment, use the following command:

```
conda activate myenv
```

Once activated, your command prompt will change to indicate that you are now working within the virtual environment.

To deactivate the virtual environment, simply run:

```
conda deactivate
```

#### Installing Packages

With the virtual environment activated, you can install packages using `conda`. For example, to install the numpy library, run:

```
conda install numpy
```

You can also use `pip` within a Conda environment to install packages that are not available through Conda:

```
pip install requests
```

#### Deleting a Virtual Environment

To delete a Conda virtual environment, use the following command:

```
conda remove --name myenv --all
```

#### Additional Features

Conda offers several additional features that make it a powerful tool:

* **Environment Files** : You can create and share environment files (environment.yml) to reproduce environments easily.

```
conda env export --name myenv > environment.yml
```

and to import an environment : 

```
conda env create -n ENVNAME --file environment.yml
```

* **Cross-Language Support** : Conda supports packages for multiple languages, including Python, R, and others.

> [!TIP]
> Find common commands on the official [cheatsheet](https://docs.conda.io/projects/conda/en/latest/_downloads/843d9e0198f2a193a3484886fa28163c/conda-cheatsheet.pdf).

`Conda` is a versatile and powerful tool for creating and managing virtual environments, especially for data science and machine learning projects. Its ability to handle dependencies for multiple languages and its extensive package repository make it a popular choice among developers.

<br>

### Poetry

`Poetry` is a modern dependency management and packaging tool for Python. It aims to bring the best of all packaging worlds (bundling, environments, and dependency management) to the Python world. Poetry offers a simple and intuitive way to manage project dependencies and virtual environments.

#### Installation and Setup

To use Poetry, you need to install it first. You can do this using the official installer.

1. **Install Poetry**:

```sh
curl -sSL https://install.python-poetry.org | python3 -
```

Alternatively, you can install Poetry using pip:

```
pip install poetry
```

2. Verify the Installation: Open a terminal or command prompt and run:
   
```
poetry --version
```

#### Creating a Virtual Environment

To create a virtual environment using Poetry, follow these steps:

1. Open a Terminal or Command Prompt: Navigate to the directory where you want to create your project.

2. Create a New Project: Run the following command to create a new project named myproject:

```
poetry new myproject
```

This command will create a new directory named myproject with a basic project structure, including a pyproject.toml file.

3. Navigate to the Project Directory:

```
cd myproject
```

4. Create the Virtual Environment: Run the following command to create and activate the virtual environment:

```
poetry install
```

This command will create a virtual environment and install the dependencies specified in the pyproject.toml file.

#### Activating and Deactivating the Environment

Poetry automatically activates the virtual environment when you run commands like poetry install or poetry run. However, you can also manually activate the environment using the following command:

```
poetry shell
```

To deactivate the virtual environment, simply exit the shell:

```
exit
```

#### Installing Packages

With the virtual environment activated, you can install packages using Poetry. For example, to install the requests library, run:

```
poetry add requests
```

This command will add the requests library to your project's dependencies and update the pyproject.toml file.

#### Deleting a Virtual Environment

To delete a Poetry virtual environment, you can remove the .venv directory (if it exists) and the poetry.lock file:

```
rm -rf .venv poetry.lock
```

#### Additional Features

Poetry offers several additional features that make it a powerful tool:

* **Dependency Management** : Poetry manages dependencies in a pyproject.toml file, making it easy to specify and update project dependencies.
* **Publishing Packages** : Poetry simplifies the process of building and publishing Python packages to PyPI.
* **Scripts** : You can define scripts in the pyproject.toml file and run them using poetry run.

`Poetry` is a modern and intuitive tool for managing project dependencies and virtual environments in Python. Its simplicity and powerful features make it an excellent choice for both small and large projects

<br>

## Conclusion

Setting up a Python development environment is a crucial step in any Python project. Whether you choose `venv`, `virtualenv`, `Conda`, or `Poetry`, each tool offers unique features and benefits that can help you manage dependencies and create isolated environments effectively.

- **venv**: Simple and built-in, ideal for small to medium-sized projects.
- **virtualenv**: More feature-rich and compatible with older Python versions.
- **Conda**: Powerful for data science and machine learning projects, with cross-language support.
- **Poetry**: Modern and intuitive, offering comprehensive dependency management and packaging.

By understanding and utilizing these tools, you can ensure that your projects are well-organized, reproducible, and free from dependency conflicts.

### Encouragement for Further Learning

The world of Python development is vast and ever-evolving. As you become more comfortable with setting up and managing virtual environments, consider exploring other advanced topics such as:

- **[Continuous Integration/Continuous Deployment (CI/CD)](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Continuous%20Integration-Continuous%20Deployment.md)** : Automating the testing and deployment of your code.
- **[Containerization](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Containerization.md)** : Using tools like Docker to create portable and consistent environments.
- **[Version Control](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Introduction-to-Version-Control-System.md)** : Mastering Git for better collaboration and version management.

Keep learning and experimenting with new tools and techniques to enhance your development skills and workflow.

<br>

## References

### Links to Official Documentation

- **venv**: [Python venv Documentation](https://docs.python.org/3/library/venv.html)
- **virtualenv**: [virtualenv Documentation](https://virtualenv.pypa.io/en/stable/)
- **Conda**: [Conda Documentation](https://docs.conda.io/en/latest/)
- **Poetry**: [Poetry Documentation](https://python-poetry.org/docs/)

### Additional Resources for Learning

- **Python Official Documentation**: [Python Docs](https://docs.python.org/3/)
- **Real Python Tutorials**: [Real Python](https://realpython.com/)
- **Python Weekly Newsletter**: [Python Weekly](https://pythonweekly.com/)
- **Python Discord Community**: [Python Discord](https://discord.gg/python)


