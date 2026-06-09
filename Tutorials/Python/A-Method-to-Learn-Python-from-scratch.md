# A Method to Learn Python from Scratch

**Level: Beginner** (no prior experience required)

## Table of Contents

- [Introduction](#introduction)
  - [What is Python?](#what-is-python)
  - [Why Python?](#why-python)
  - [A brief history](#a-brief-history)
  - [About this tutorial](#about-this-tutorial)
- [Getting started](#getting-started)
  - [Installing Python](#installing-python)
  - [Choosing a code editor or IDE](#choosing-a-code-editor-or-ide)
- [A suggested learning path](#a-suggested-learning-path)
  - [Define why you are learning Python](#define-why-you-are-learning-python)
  - [Python basics and data manipulation (months 1–3)](#python-basics-and-data-manipulation-months-13)
  - [Intermediate Python (months 4–6)](#intermediate-python-months-46)
  - [Advanced Python and specialization (months 7+)](#advanced-python-and-specialization-months-7)
- [Tips for learning Python](#tips-for-learning-python)

## Introduction

### What is Python?

Python is a high-level, interpreted programming language known for its readable syntax. It
was created in the late 1980s by Guido van Rossum and is widely used across research and
industry.

### Why Python?

Python combines a gentle learning curve with broad applicability. Common uses include:

- Data science and data analysis
- Machine learning and artificial intelligence
- Scientific computing
- Scripting and automation
- Web development

Its standard library covers many common tasks, and a large ecosystem of third-party
libraries (such as NumPy, pandas, and Matplotlib) extends it further.

### A brief history

Python is a programming language: a vocabulary and set of grammatical rules for
instructing a computer. Guido van Rossum named it after the BBC show *Monty Python's
Flying Circus*, which is why Python documentation and examples sometimes reference the
show.

In 1987, while working at CWI (the national research institute for mathematics and
computer science in the Netherlands), van Rossum began writing Python, drawing on his
earlier experience with a language called ABC.

<div align="center">

<img src="https://python.land/wp-content/uploads/2020/12/python-timeline.jpg" alt="Python timeline" width="400" height="400">

</div>

Python is designed around a set of guiding principles, the *Zen of Python*, which favour
clarity and simplicity.

### About this tutorial

This tutorial is aimed at people in the scientific community who want to learn Python. It
is a curated set of resources and a suggested path to get started, not a comprehensive
course.

## Getting started

### Installing Python

You need Python installed before you can run code locally.

**Windows**

1. Go to the official [Python download page](https://www.python.org/downloads/) and
   download the latest Python 3 installer.
2. Run the installer and follow the prompts.

> [!IMPORTANT]
> During installation, select **Add Python to PATH**.

**macOS (via Homebrew)**

Install [Homebrew](https://brew.sh/), then run:

```sh
brew install python
```

**Linux (Ubuntu-based distributions)**

```sh
sudo apt-get install python3
```

**Verify the installation**

Open a new terminal or Command Prompt and run:

```sh
python --version
```

You should see the version you installed. If not, restart the terminal so the updated
PATH takes effect.

**In your browser**

If you cannot install Python, you can run it in your browser, for example with
[Python Playground](https://python-playground.netlify.app/).

> [!NOTE]
> Online interpreters are resource-constrained. They are well suited to learning the
> fundamentals, running short scripts, and testing code fragments, but not to larger work.

### Choosing a code editor or IDE

To write and run code you need a code editor or an Integrated Development Environment (IDE).

A **code editor** focuses on editing text; modern editors such as VS Code add IDE-like
features through extensions. An **IDE** is a single application that bundles editing,
running, and debugging tools together.

<details>
<summary><b>Code editors</b></summary>

#### Visual Studio Code (VS Code)

A lightweight, open-source editor with extensions for debugging, testing, and code
completion. Download it from the [official website](https://code.visualstudio.com/).

*Set up VS Code for Python:*

1. Open the **Extensions** tab.
2. Search for *Python*.
3. Select the **Python** extension by Microsoft.
4. Click **Install**, then restart VS Code.

*Useful extensions for Python:*

- [AREPL for Python](https://marketplace.visualstudio.com/items?itemName=almenon.arepl)
- [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)
- [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [Jupyter](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)
- [Python Docstring Generator](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring)
- [Python Indent](https://marketplace.visualstudio.com/items?itemName=KevinRose.vsc-python-indent)
- [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance)
- [Python Preview](https://marketplace.visualstudio.com/items?itemName=dongli.python-preview)
- [Python Snippets](https://marketplace.visualstudio.com/items?itemName=frhtylcn.pythonsnippets)

#### Sublime Text

A fast, extensible editor with many plugins for Python. Download it from the
[official website](https://www.sublimetext.com/).

*Set up Sublime Text for Python:*

1. Open the **Command Palette** (**Tools > Command Palette**).
2. Run **Install Package Control**.
3. Open the Command Palette again, run **Package Control: Install Package**, and install
   **Terminus** for an integrated terminal.
4. To set Python syntax, run **Set Syntax: Python** from the Command Palette.

*Useful packages for Python:*

- [Anaconda](https://packagecontrol.io/packages/Anaconda)
- [AdvancedNewFile](https://packagecontrol.io/packages/AdvancedNewFile)
- [AutoPEP8](https://packagecontrol.io/packages/AutoPEP8)
- [BracketHighlighter](https://packagecontrol.io/packages/BracketHighlighter)
- [ColorHelper](https://packagecontrol.io/packages/ColorHelper)
- [Git](https://packagecontrol.io/packages/Git)
- [GitGutter](https://packagecontrol.io/packages/GitGutter)
- [LSP](https://packagecontrol.io/packages/LSP)
- [SideBarEnhancements](https://packagecontrol.io/packages/SideBarEnhancements)
- [SublimeLinter](https://packagecontrol.io/packages/SublimeLinter)

</details>

<details>
<summary><b>Integrated Development Environments (IDEs)</b></summary>

#### Spyder

A free, open-source scientific environment written in Python, designed for scientists,
engineers, and data analysts. Download it from the
[official website](https://www.spyder-ide.org/).

After installing, select the Python interpreter you installed earlier.

*Useful plugins:*

- [spyder-notebook](https://github.com/spyder-ide/spyder-notebook)
- [spyder-terminal](https://github.com/spyder-ide/spyder-terminal)
- [spyder-unittest](https://github.com/spyder-ide/spyder-unittest)

#### PyCharm

A feature-rich Python IDE from JetBrains with debugging, testing, and code completion.
Download it from the [official website](https://www.jetbrains.com/pycharm/).

> [!NOTE]
> Since 2025, PyCharm is distributed as a single application. Its core features — editor,
> debugger, refactoring, and Jupyter support — are free and may be used for commercial
> work. An optional paid **Pro** subscription adds web-framework support (Django, Flask,
> FastAPI), database tools, remote interpreters, and profiling. The free tier is enough
> for most learning and research.

After installing, select the Python interpreter you installed earlier when prompted.

</details>

**Choosing between them**

Consider ease of use, available features (syntax highlighting, code completion,
debugging), and community support. VS Code and PyCharm are common starting points; any of
the options above is a reasonable choice.

## A suggested learning path

Learning a language is most effective when you write code regularly, so treat the path
below as a flexible framework rather than a fixed curriculum. Expect the fundamentals to
take roughly 1–3 months and more advanced topics several months of consistent practice.

### Define why you are learning Python

Clear goals make it easier to choose what to learn. Consider:

- What field do you want to work in (data science, software engineering, research)?
- What topics interest you (data analysis, application development, AI)?
- What problems do you want to solve (automating tasks, analysing data, building models)?

Your answers shape the rest of the path.

### Python basics and data manipulation (months 1–3)

Start with the core concepts:

1. **Syntax** — how Python code is structured.
2. **Data types** — integers, floats, strings, lists, tuples, dictionaries.
3. **Variables** — declaring and using them.
4. **Operators** — arithmetic, comparison, logical, and assignment.
5. **Control flow** — conditionals (`if`/`else`) and loops (`for`, `while`).
6. **Functions and modules** — writing reusable code and importing libraries.
7. **Strings and lists** — manipulating and iterating over them.
8. **Core libraries** — an introduction to NumPy, pandas, Matplotlib, and Seaborn.

### Intermediate Python (months 4–6)

Build on the basics with:

- **Object-oriented programming**, error handling, and more complex data structures.
- **Data manipulation and analysis** with pandas and NumPy (sorting, filtering, grouping,
  merging, pivoting).
- **Data visualization** with Matplotlib and Seaborn.
- **Good practices and debugging** — readable code, naming conventions, and debugging
  techniques (print statements, a debugger, logging).

Once you are comfortable, start applying these skills to problems relevant to your work —
for example, building a predictive model or analysing imaging data.

### Advanced Python and specialization (months 7+)

By now you should understand Python and its use in your field. Narrow your focus to one
area — for example computational neuroscience, neuroinformatics, or data analysis. To
analyse brain imaging data, you might explore libraries such as
[Nibabel](https://nipy.org/nibabel/), [MNE-Python](https://mne.tools/stable/index.html),
or [SciPy](https://scipy.org/). Keep building projects and following developments in your
area.

## Tips for learning Python

- **Choose a focus.** Pick an area that fits your goals (for data science, prioritize
  pandas and NumPy; for web development, a framework such as Django or Flask). Skills
  transfer across areas, so this is a starting point, not a limitation.
- **Practice regularly.** Short, consistent practice helps more than occasional long
  sessions. Reviewing or refactoring earlier code counts.
- **Work on real projects.** Applying concepts is the most effective way to learn. Start
  small and increase complexity over time.
- **Join a community.** Local meetups and online forums offer support, motivation, and
  the chance to learn from others.
- **Take your time.** Understanding each concept matters more than moving quickly.
- **Iterate.** Revisit old projects and improve them as your skills grow.

> [!TIP]
> The [learning resources](https://github.com/LSeu-Open/Lab-Libraries/tree/main?tab=readme-ov-file#learning-resources-python)
> section of this repository collects courses, tutorials, and books to support each stage
> above.
