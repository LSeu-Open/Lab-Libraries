# Setting Up a Python Development Environment

**Level: Beginner** (no prior experience required)

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Virtual environments](#virtual-environments)
  - [venv](#venv)
  - [virtualenv](#virtualenv)
  - [Conda](#conda)
  - [Poetry](#poetry)
  - [uv](#uv)
- [Conclusion](#conclusion)
- [Official documentation](#official-documentation)

## Introduction

### What is a development environment?

A development environment is the set of tools, libraries, and configuration needed to
write, run, and debug code. For Python, it typically includes the Python interpreter, a
code editor or IDE, and the libraries a project depends on.

### Why use a virtual environment?

A virtual environment isolates a project's dependencies from the rest of your system.
This matters for several reasons:

1. **Isolation** — different projects can require different versions of the same library
   without conflicting.
2. **Reproducibility** — the environment can be recreated on another machine, which makes
   collaboration and deployment more reliable.
3. **Organization** — dependencies and configuration are managed per project rather than
   installed globally.

### What this tutorial covers

This tutorial covers four common tools for creating and managing Python environments:

- **venv** — the built-in Python module for virtual environments.
- **virtualenv** — a third-party tool with additional features.
- **Conda** — a package and environment manager widely used in data science.
- **Poetry** — a dependency-management and packaging tool that also handles environments.
- **uv** — a fast, all-in-one package and environment manager.

## Prerequisites

This tutorial assumes you have Python 3 and a code editor or IDE installed. If not, start
with [A Method to Learn Python from scratch](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Python/A-Method-to-Learn-Python-from-scratch.md).

Before you begin, make sure you have:

1. **Basic command-line skills** — navigating directories and running commands. If you are
   new to the command line, see
   [Basic Understanding of the Command Line](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Basic-Understanding-of-the-Command-Line.md).
2. **An internet connection** — to download tools and packages.
3. **Administrative privileges** — to install software on your system.
4. **Git (optional)** — useful for version control and collaboration. If you are new to
   it, see
   [Introduction to Version Control Systems](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Introduction-to-Version-Control-System.md).

## Virtual environments

### venv

`venv` is a built-in Python module for creating virtual environments. It has been part of
the standard library since Python 3.3, so it does not need to be installed separately.

#### Create an environment

From the directory where you want the environment, run:

```sh
python -m venv myenv
```

This creates a directory named `myenv` containing the environment.

#### Activate and deactivate

Activate the environment:

- Windows: `myenv\Scripts\activate`
- macOS / Linux: `source myenv/bin/activate`

Once activated, the prompt changes to show the environment name. To deactivate, run:

```sh
deactivate
```

#### Install packages

With the environment activated, install packages with `pip`:

```sh
pip install requests
```

#### Delete an environment

There is no dedicated command to delete a `venv` environment. Deactivate it, then remove
its directory:

```sh
deactivate
rm -r myenv      # Windows: rmdir /s /q myenv
```

`venv` is simple, built in, and well suited to most small and medium-sized projects.

### virtualenv

`virtualenv` is a third-party tool for creating isolated environments. It offers more
options than the built-in `venv` and supports a wider range of Python versions.

#### Install

```sh
pip install virtualenv
```

#### Create an environment

From the directory where you want the environment:

```sh
virtualenv myenv
```

#### Activate, deactivate, and install packages

Activation works the same way as `venv`:

- Windows: `myenv\Scripts\activate`
- macOS / Linux: `source myenv/bin/activate`

Deactivate with `deactivate`, and install packages with `pip install <package>`.

#### Delete an environment

Remove the environment directory:

- Windows: `rmdir /s /q myenv`
- macOS / Linux: `rm -rf myenv`

#### Additional options

- **Custom interpreter** — choose which Python the environment uses:
  ```sh
  virtualenv -p /path/to/python myenv
  ```
- **Access to global packages** — by default, an environment is isolated from the
  system-wide (global) packages. To give it access to them, create it with
  `--system-site-packages`:
  ```sh
  virtualenv --system-site-packages myenv
  ```

> [!NOTE]
> Isolation is the default in modern `virtualenv`. The old `--no-site-packages` flag has
> been removed because its behaviour is now the default; use `--system-site-packages` only
> when you specifically want access to the global packages.

### Conda

`Conda` is a package and environment manager popular in data science. It manages
dependencies for Python, R, and other languages, and is part of the Anaconda and Miniconda
distributions.

#### Install

Install either the full [Anaconda](https://www.anaconda.com/download) distribution or the
smaller [Miniconda](https://www.anaconda.com/docs/getting-started/miniconda/main)
distribution, then verify it:

```sh
conda --version
```

#### Create an environment

Create an environment named `myenv` with a specific Python version (3.10 is a good default;
choose the version your project needs):

```sh
conda create --name myenv python=3.10
```

#### Activate and deactivate

```sh
conda activate myenv
conda deactivate
```

#### Install packages

```sh
conda install numpy
```

You can also use `pip` inside a Conda environment for packages not available through Conda:

```sh
pip install requests
```

#### Delete an environment

```sh
conda remove --name myenv --all
```

#### Additional features

- **Environment files** — export an environment so others can reproduce it:
  ```sh
  conda env export --name myenv > environment.yml
  ```
  and recreate it from the file:
  ```sh
  conda env create -n myenv --file environment.yml
  ```
- **Cross-language support** — Conda manages packages for Python, R, and other languages.

> [!TIP]
> The official [conda cheat sheet](https://docs.conda.io/projects/conda/en/latest/user-guide/cheatsheet.html)
> lists the common commands.

### Poetry

`Poetry` is a dependency-management and packaging tool. It manages dependencies, the
virtual environment, and packaging from a single `pyproject.toml` file.

#### Install

Use the official installer:

```sh
curl -sSL https://install.python-poetry.org | python3 -
```

#### Create a project

Create a new project (this also generates a `pyproject.toml`):

```sh
poetry new myproject
cd myproject
```

Install its dependencies, which creates the virtual environment:

```sh
poetry install
```

#### Run commands in the environment

Run a single command inside the environment with `poetry run`, for example:

```sh
poetry run python script.py
```

To activate the environment in your shell, use:

```sh
poetry env activate
```

> [!NOTE]
> The `poetry shell` command was removed in Poetry 2.0. `poetry env activate` prints the
> command to activate the environment (run it via `eval` on POSIX shells or
> `Invoke-Expression` on PowerShell). If you prefer the old behaviour, install the plugin
> with `poetry self add poetry-plugin-shell` to restore `poetry shell`.

#### Install packages

```sh
poetry add requests
```

This adds the package to your dependencies and updates `pyproject.toml`.

#### Additional features

- **Dependency management** — dependencies are declared in `pyproject.toml`, with exact
  versions pinned in `poetry.lock` for reproducible installs.
- **Publishing** — Poetry can build and publish packages to PyPI.
- **Scripts** — you can define scripts in `pyproject.toml` and run them with `poetry run`.

### uv

> [!TIP]
> **Recommended for modern Python development.** `uv` is a single, fast tool that replaces
> the roles of `pip`, `venv`, `virtualenv`, and much of `pipenv`/`poetry`. It is also the
> tool used by the companion [lab-scripts](https://github.com/LSeu-Open/lab-scripts)
> repository to run scripts reproducibly, so learning it here carries over directly.

`uv` is a fast package and environment manager from Astral, written in Rust. It can create
environments, install packages, manage Python versions, and run scripts — often many times
faster than the equivalent `pip`/`venv` workflow.

#### Install

Use the standalone installer:

- macOS / Linux:
  ```sh
  curl -LsSf https://astral.sh/uv/install.sh | sh
  ```
- Windows (PowerShell):
  ```powershell
  powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
  ```

Alternatively, install it with `pipx install uv` or `pip install uv`. Verify it with:

```sh
uv --version
```

#### Create an environment

Create a virtual environment (named `.venv` by default), optionally pinning the Python
version — uv downloads that Python for you if it is not installed:

```sh
uv venv --python 3.12
```

#### Activate, or skip activation

You can activate the environment as usual (`source .venv/bin/activate`, or
`.venv\Scripts\activate` on Windows). More commonly with uv, you skip activation and let
uv use the environment automatically:

```sh
uv pip install requests      # install into the environment
uv run script.py             # run a script in the environment
```

#### Project mode

For a full project with locked dependencies, uv manages a `pyproject.toml` and a `uv.lock`
file:

```sh
uv init myproject
cd myproject
uv add requests              # add a dependency
uv run main.py               # run within the project environment
```

#### Delete an environment

Remove the environment directory:

```sh
rm -rf .venv                 # Windows: rmdir /s /q .venv
```

> [!NOTE]
> uv also reads inline script dependencies ([PEP 723](https://peps.python.org/pep-0723/)),
> so a single script can declare its own requirements and run with `uv run script.py` —
> no manual environment setup. This is how the
> [lab-scripts](https://github.com/LSeu-Open/lab-scripts) tools are run.

## Conclusion

Whichever tool you choose, the goal is the same: isolated, reproducible environments that
keep project dependencies from conflicting.

- **uv** — fast, all-in-one package and environment manager; recommended for new projects.
- **venv** — simple and built in; suitable for most projects.
- **virtualenv** — more options and broader Python-version support.
- **Conda** — strong for data science, with cross-language support.
- **Poetry** — integrated dependency management and packaging.

As a next step, consider these related topics:

- [Continuous Integration / Continuous Deployment (CI/CD)](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Continuous%20Integration-Continuous%20Deployment.md) — automating testing and deployment.
- [Virtualization and containers](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Virtualization.md) — using tools like Docker for portable, consistent environments.
- [Version control](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Introduction-to-Version-Control-System.md) — using Git for collaboration and history.

## Official documentation

- **uv** — [docs.astral.sh/uv](https://docs.astral.sh/uv/)
- **venv** — [docs.python.org/3/library/venv.html](https://docs.python.org/3/library/venv.html)
- **virtualenv** — [virtualenv.pypa.io](https://virtualenv.pypa.io/en/stable/)
- **Conda** — [docs.conda.io](https://docs.conda.io/en/latest/)
- **Poetry** — [python-poetry.org/docs](https://python-poetry.org/docs/)
