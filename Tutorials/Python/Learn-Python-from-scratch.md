# Learn Python from scratch: A Tutorial

<br>

<h2> Table of Content </h2>

- [Introduction](#introduction)
  - [Welcome to Python!](#welcome-to-python)
  - [Why Python?](#why-python)
  - [Python history](#python-history)
  - [About This Tutorial](#about-this-tutorial)
- [Getting Started](#getting-started)
  - [Installing Python on Your Computer](#installing-python-on-your-computer)
    - [Windows](#windows)
    - [macOS (via Homebrew)](#macos-via-homebrew)
    - [Linux (Ubuntu-based distributions)](#linux-ubuntu-based-distributions)
  - [Setting up a Code Editor or an Integrated Development Environment (IDE)](#setting-up-a-code-editor-or-an-integrated-development-environment-ide)
    - [Code Editors](#code-editors)
    - [Integrated Development Environment (IDE)](#integrated-development-environment-ide)
    - [Key Considerations when Choosing a Code Editor or IDE](#key-considerations-when-choosing-a-code-editor-or-ide)
- [How i see the learning process](#how-i-see-the-learning-process)
  - [Understand why you’re learning Python](#understand-why-youre-learning-python)
  - [Get started with the Python Basics and data manipulation (Month 1-3)](#get-started-with-the-python-basics-and-data-manipulation-month-1-3)
  - [Master intermediate Python concepts (Month 4-6)](#master-intermediate-python-concepts-month-4-6)
  - [Advanced Python and specialization (Month 7+)](#advanced-python-and-specialization-month-7)
  - [Keep challenging yourself (Infinite)](#keep-challenging-yourself-infinite)
- [Tips for learning Python](#tips-for-learning-python)
- [Learning resources](#learning-resources)


<br>

# Introduction

## Welcome to Python!

Python is a high-level, interpreted programming language known for its simplicity, readability, and ease of use. Created in the late 1980s by Guido van Rossum, Python has become a staple in the world of computer science.

## Why Python?

Python is a widely used programming language that offers a unique combination of power, versatility, and ease of use. Its applications are diverse and include:

* Web development
* Data Science
* Data analysis
* Machine learning
* Artificial Intelligence (AI)
* Scripting and tooling
* and more...

One notable aspect of Python is its comprehensive base library, which provides a solid foundation for building projects quickly. Additionally, the large community of Python users has contributed hundreds of thousands of high-quality libraries and frameworks that can help you accomplish tasks efficiently.

Learning Python is a straightforward process, and this tutorial will guide you through it.

## Python history

Let’s start by defining more precisely what Python is. Python is a computer programming language. Or, in other words, a vocabulary and set of grammatical rules for instructing a computer to perform tasks. Its original creator, Guido van Rossum, named it after the BBC television show ‘Monty Python’s Flying Circus.’ Hence, you’ll find that Python books, code examples, and documentation sometimes contain references to this television show.

In 1987, Guido worked on a large distributed operating system at the CWI, a national research institute for mathematics and computer science in the Netherlands. Within that project, he had some freedom to work on side projects. With the knowledge and experience he had built up in the years before, working on a computer language called ABC, he started writing the Python programming language.

<div align="center">
  
<img src="https://python.land/wp-content/uploads/2020/12/python-timeline.jpg" alt="Python timeline" width="400" height="400">

</div>

<br>

Python is easy to learn, and it’s designed around a set of clearly defined principles (the Zen of Python) that encourage Python core developers to make a language that is unambiguous and easy to use.

## About This Tutorial

This tutorial is designed for individuals in the scientific community who want to learn Python. It provides a collection of resources to help you get started with Python, rather than a comprehensive course.

<br>

# Getting Started

## Installing Python on Your Computer

Before you can start coding in Python, you need to have Python installed on your computer. Here's a step-by-step guide to help you get started:

### Windows

* Go to the official Python download page and click on the "Download Python" button.
* Select the latest version of Python (currently Python 3.x) and choose the Windows installer.
* Run the installer and follow the prompts to install Python.

> [!IMPORTANT]
> Make sure to select the option to **add Python to your PATH** during the installation process.

### macOS (via Homebrew)
Open your Terminal application.
Install Homebrew by following the instructions on the Homebrew website.
Once Homebrew is installed, run the following command to install Python: 

```
brew install python
```

### Linux (Ubuntu-based distributions)

Open your Terminal application.

Run the following command to install Python: 

```
sudo apt-get install python3
```

To verify your installation, Once you've installed Python, open a new Terminal or Command Prompt window and type:

```
python --version
```

You should see the version of Python you just installed. If you don't see the version, you may need to restart your Terminal or Command Prompt.

### In Your Browser 
If installing Python isn't feasible for you (or if you simply prefer not to), there's a great alternative : [Python right from your browser](https://python-playground.netlify.app/) ; This way, you can still get started without any installation hassle!

> [!IMPORTANT]
> Keep in mind that the online Python interpreter is a resource-constrained environment. Its primary purpose is to facilitate learning Python's fundamentals, executing short scripts, and testing code fragments.

<br>

## Setting up a Code Editor or an Integrated Development Environment (IDE)

Now that you have Python installed, you'll need a code editor or Integrated Development Environment (IDE) to write and run your Python code. Here are a few popular options:

### Code Editors 

A text editor, on the other hand, is a simpler application primarily focused on editing plain text files. While text editors can be used for coding, they lack many of the advanced features found in IDEs. However, modern text editors like VSCode have evolved to include some IDE-like capabilities through extensions and plugins.

<details>
<summary> 💻 <b>Code Editors List</b></summary>

#### Visual Studio Code (VS Code)
Visual Studio Code (VS Code): A lightweight, open-source code editor with a wide range of extensions for Python development, including debugging, testing, and code completion.

> Download and install VS Code from the [official website](https://code.visualstudio.com/).

##### Setting up VS Code for Python
* First, click the **Extensions tab**.
* Second, type the python on the search input.
* Third, click the **Python** extension. It’ll show detailed information on the right pane.
* Finally, click the Install button to install the Python extension.
* Restart VS Code and you're ready to go !

##### Usefull VS Code extensions for Python developers
* [AREPL for python](https://marketplace.visualstudio.com/items?itemName=almenon.arepl)
* [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)
* [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
* [Gitlens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
* [Jupyter](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)
* [Python Docstring Generator](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring)
* [Python Indent](https://marketplace.visualstudio.com/items?itemName=KevinRose.vsc-python-indent)
* [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance)
* [Python Preview](https://marketplace.visualstudio.com/items?itemName=dongli.python-preview)
* [Python Snippets](https://marketplace.visualstudio.com/items?itemName=frhtylcn.pythonsnippets)

#### Sublime Text
A popular, feature-rich code editor with a large user base and a wide range of plugins for Python development.

> Download and install Sublime Text from the [official website](https://www.sublimetext.com/).

##### Configuring Sublime Text for Python
Sublime Text comes almost configured and ready out of the box. However, if you want to set the Sublime Text for Python, you should install and configure the integrated terminal. 

To set it up :

1. Go to your Sublime Text editor.
2. Open the **Command Palette** by navigating to ``Tool > Command Palette``.
3. Type ``Install Package Control`` into the search bar that appears and select it from the drop-down menu. This will install Package Control on your Sublime Text editor. If successful, a pop-up message will confirm this.
4. Now, install the **Terminus package** by opening the Command Palette again and typing ``Package Control: Install Package``. Select it from the drop-down menu. This will present you with a list of available packages.
5. From the new list, select ``Terminus`` to download and install this package. Once completed, you'll find Terminus under ``Preferences" > "Package Settings``.
6. To open Terminus, use the Command Palette again and type ``Terminus``. Select ``Terminus: Open Default Shell in Panel`` from the drop-down menu. This will open a console within Sublime Text.
7. Finally, configure your syntax for Python by once more opening the Command Palette and typing ``Python``.
8. From the drop-down menu, select ``Set Syntax: Python``. This ensures that your code highlighting, color scheme, and auto-indentation are based on **Python syntax**.

##### Usefull Sublime Text Packages for Python developers

* [Anaconda](https://packagecontrol.io/packages/Anaconda)
* [Advanced​New​File](https://packagecontrol.io/packages/AdvancedNewFile)
* [Auto​PEP8](https://packagecontrol.io/packages/AutoPEP8)
* [BracketHighlighter](https://packagecontrol.io/packages/BracketHighlighter)
* [ColorHelper](https://packagecontrol.io/packages/ColorHelper)
* [Git](https://packagecontrol.io/packages/Git)
* [Git​Gutter](https://packagecontrol.io/packages/GitGutter)
* [LSP](https://packagecontrol.io/packages/LSP)
* [Side​Bar​Enhancements](https://packagecontrol.io/packages/SideBarEnhancements)
* [Sublime​Linter](https://packagecontrol.io/packages/SublimeLinter)
  
</details>

### Integrated Development Environment (IDE)

An IDE is a comprehensive software application designed specifically for software development. It provides an all-in-one environment for writing, editing, building, running, and debugging code.

<details>
<summary> 💻 <b> IDE List</b></summary>
  
#### Spyder
Spyder is a free and open source scientific environment written in Python, for Python, and designed by and for scientists, engineers and data analysts.

> Download and install Spyder from the [official website](https://www.spyder-ide.org/).

* Follow the installation instructions and create a new project.
* Spyder will prompt you to select a Python interpreter; select the one you installed earlier.

##### Usefull Spyder Plugins 

* [spyder-notebook](https://github.com/spyder-ide/spyder-notebook)
* [spyder-terminal](https://github.com/spyder-ide/spyder-terminal)
* [spyder-unittest](https://github.com/spyder-ide/spyder-unittest)

#### PyCharm
A popular, feature-rich IDE with a wide range of tools for Python development, including debugging, testing, and code completion.

> Download and install PyCharm Community Edition from the [official website](https://www.jetbrains.com/pycharm/).

> [!caution]
>  Pycharm is a proprietary IDE and therefore it has a pricing model. Jetbrains offers 3 plans: Community, Professional, and Enterprise.
> * A **free Community edition** for basic IDE usage with reduced features.
> * A **Professional edition subscription** at $201.38/year with 20% renewal discounts and latest updates during active periods.
> * **Organizations pay based on user count**, receive volume discounts (including up to 50% off for nonprofits).

* Follow the installation instructions and create a new project.
* PyCharm will prompt you to select a Python interpreter; select the one you installed earlier.

</details>

### Key Considerations when Choosing a Code Editor or IDE

When choosing a code editor or IDE, consider the following factors:

* **Ease of use**: How easy is it to navigate and write code?
* **Features**: Does it have features like syntax highlighting, code completion, and debugging?
* **Community support**: Is there an active community and resources available?

> [!TIP]
> **For beginners, VS Code and PyCharm are popular choices due to their ease of use and extensive features.**

<br>

# How i see the learning process

Mastering a new coding language requires a strategic approach, and this section provides a suggested learning path for Python in an academic setting. While individual learning styles and needs may vary, this roadmap offers a flexible framework for those who require guidance.

The most effective way to learn Python is by doing, as hands-on experience is crucial for mastering the language. Depending on your level of dedication and prior experience, you can expect to grasp the foundational concepts of Python within 1-3 months, while advanced topics may require 4-12 months of consistent effort to master.

## Understand why you’re learning Python

Before embarking on a Python learning journey, it's essential to establish clear motivations for doing so. This will enable you to develop a tailored learning plan that suits your needs.

To define specific goals, ask yourself some key questions. What are your career aspirations? Are you seeking a career in data science, web development, software engineering, or another field where Python is commonly utilized?

What areas of interest do you have? Are you drawn to data analysis, application development, or artificial intelligence? What problems do you aim to solve? Do you want to automate tasks, analyze data, develop software, or create machine learning models?

By answering these questions and defining your goals, you'll maintain motivation and focus throughout the learning process.

> Your interests will guide your learning journey. 

The answers to these questions will inform the structure of your learning path, which is crucial for the subsequent steps.

## Get started with the Python Basics and data manipulation (Month 1-3)

Firstly, let's dive into the core concepts of Python programming. This foundational knowledge will serve as a strong base for more advanced topics. 

Key areas include:

1. **Basic Syntax**: Understanding how Python structures its code and syntax is essential.
2. **Data Types**: Learn about different data types in Python, such as integers, floats, strings, lists, tuples, dictionaries, etc.
3. **Variables**: Discover how to declare and use variables effectively.
4. **Operators**: Explore the various operators available in Python for arithmetic, comparison, logical, assignment, and more.
5. **Control Structures**: Understand how to control the flow of your program using conditions (if-else statements) and loops (for and while).
6. **Functions and Modules**: Learn about creating reusable code blocks with functions and importing external libraries and modules into your Python scripts.
7. **Working with Strings and Lists**: Master string manipulation techniques and learn how to create, access, modify, and iterate over lists in Python.
8. **Libraries in Python**: Familiarize yourself with the importance of libraries like Pandas, NumPy, Matplotlib, Seaborn for data handling, manipulation, analysis, and visualization.

Now that we've covered the basics, let's focus on one of the most essential skills: **handling and manipulating data**. This is an invaluable skill for various Python-related tasks, particularly in the fields of data science and machine learning. In this section, you will focus into:

1. The fundamental libraries, such as Pandas and NumPy.
2. Techniques for data manipulation and analysis, including sorting, filtering, grouping, merging, and pivoting data.
3. Data visualization using Matplotlib and Seaborn libraries to create informative and visually appealing plots and graphs.

## Master intermediate Python concepts (Month 4-6)

As your familiarity grows, it's time to dive deeper into advanced Python topics. This includes understanding object-oriented programming, error handling, and more complex data structures.

Mastering Best Practices and Debugging:
1. **Writing efficient and readable code** is crucial for collaboration and maintenance. Learn how to structure your code effectively, use appropriate naming conventions, and comment your code efficiently.
2. Familiarize yourself with **different debugging techniques** such as print statements, using a debugger, or logging. Also, explore useful tools like PyCharm's debugger for enhanced efficiency.
3. **Error handling** is an essential aspect of programming. Learn how to handle exceptions, use try/except blocks, and finally understand the importance of raising custom errors when necessary.


Now that you have a solid foundation in Python basics, it's time to dive even deeper into more specific areas based on your interests. If machine learning piques your interest, begin the Machine Learning Fundamentals with Python Track. As you progress, make sure your projects are more complex. For example, create a machine learning model to predict house prices or design an image classification system.

## Advanced Python and specialization (Month 7+)

At this point, you should have a good understanding of Python and its applications in your field of interest. Now is the time to specialize.

Based on your interests and career aspirations, specialize in one area. This could be data science, machine learning, web development, automation, or any other field. For instance, If you're interested in natural language processing, you might start learning about libraries like NLTK and SpaCy. Keep working on projects and reading about new developments in your field.

## Keep challenging yourself (Infinite)

<br>

# Tips for learning Python

* **Choose Your Focus !**

Python is a versatile language with a wide range of applications, from web development and data analysis to machine learning and artificial intelligence. As you start your Python journey, it can be beneficial to choose a specific area to focus on. This could be based on your career goals, personal interests, or simply the area you find most exciting.

Choosing a focus can help guide your learning and make it more manageable. For example, if you're interested in data science, you might prioritize learning libraries like pandas and NumPy. If web development is your goal, you might focus on frameworks like Django or Flask.

Remember, choosing a focus doesn't mean you're limited to that area. Python's versatility means that skills you learn in one area can often be applied in others. As you grow more comfortable with Python, you can start exploring other areas and expanding your skill set.

* **Practice regularly**

Consistency is a key factor in successfully learning a new language, and Python is no exception. Aim to code every day, even if it's just for a few minutes. This regular practice will help reinforce what you've learned, making it easier to recall and apply.

Daily practice doesn't necessarily mean working on complex projects or learning new concepts each day. It could be as simple as reviewing what you've learned, refactoring some of your previous code, or solving coding challenges.

* **Work on real projects**

The best way to learn Python is by using it. Working on real projects gives you the opportunity to apply the concepts you've learned and gain hands-on experience. Start with simple projects that reinforce the basics, and gradually take on more complex ones as your skills improve. This could be anything from automating a simple task, building a small game, or even creating a data analysis project.

* **Join a community**

Learning Python, like any new skill, doesn't have to be a solitary journey. In fact, joining a community of learners can provide a wealth of benefits. It can offer support when you're facing challenges, provide motivation to keep going, and present opportunities to learn from others.

There are many Python communities you can join. These include local Python meetups, where you can connect with other Python enthusiasts in person and online forums where you can ask questions, share your knowledge, and learn from others' experiences.

* ***Don't rush***

Learning to code takes time, and Python is no exception. Don't rush through the material in an attempt to learn everything quickly. Take the time to understand each concept before moving on to the next. Remember, it's more important to fully understand a concept than to move through the material quickly.

* **Keep iterating**
  
Learning Python is an iterative process. As you gain more experience, revisit old projects or exercises and try to improve them or do them in a different way. This could mean optimizing your code, implementing a new feature, or even just making your code more readable. This process of iteration will help reinforce what you've learned and show you how much you've improved over time.

<br>

# Learning resources

:book: official Python documentation : https://wiki.python.org/moin/FrontPage

:video_game: Online Interactive courses

**Begginer**

| Website                       | Authors                | Audience                | Strengths                       | Topics                        |
|:-----------------------------|:-----------------------:|:-----------------------:|:-------------------------------:|:-------------------------------:|
| | |  |  | |
| | |  |  | |
| | |  |  | |
| | |  |  | |
| | |  |  | |


**Intermediate**

| Website                       | Authors                | Audience                | Strengths                       | Topics                        |
|:-----------------------------|:-----------------------:|:-----------------------:|:-------------------------------:|:-------------------------------:|
| | |  |  | |
| | |  |  | |
| | |  |  | |
| | |  |  | |
| | |  |  | |

**Advanced**

| Website                       | Authors                | Audience                | Strengths                       | Topics                        |
|:-----------------------------|:-----------------------:|:-----------------------:|:-------------------------------:|:-------------------------------:|
| | |  |  | |
| | |  |  | |
| | |  |  | |
| | |  |  | |
| | |  |  | |

**Specific Topics**

- []

<br>

:computer: Tutorials

**Begginer**

| Title                        | Authors                 | Audience                 | Format                       | Topics                        |
|:-----------------------------|:-----------------------:|:-----------------------:|:-------------------------------:|:-------------------------------:|
| | |  |  | |
| | |  |  | |
| | |  |  | |
| | |  |  | |
| | |  |  | |

**Intermediate**

| Title                        | Authors                 | Audience                 | Format                       | Topics                        |
|:-----------------------------|:-----------------------:|:-----------------------:|:-------------------------------:|:-------------------------------:|
| | |  |  | |
| | |  |  | |
| | |  |  | |
| | |  |  | |
| | |  |  | |

**Advanced**

| Title                        | Authors                 | Audience                 | Format                       | Topics                        |
|:-----------------------------|:-----------------------:|:-----------------------:|:-------------------------------:|:-------------------------------:|
| | |  |  | |
| | |  |  | |
| | |  |  | |
| | |  |  | |
| | |  |  | |

**Specific Topics**

- []

<br>

:book: Book References

**Begginer**

| Book Name                    | Authors                  | Audience                   | Strengths                           | Topics                        |
|:-----------------------------|:-----------------------:|:-----------------------:|:-------------------------------:|:-------------------------------:|
| [A Byte of Python](https://python.swaroopch.com/) | Swaroop C H | New to Python and those needing a refresher. | Easy to understand, gentle, thorough | Python fundamentals and problem solving |
| [Automate the Boring Stuff with Python](https://automatetheboringstuff.com/) | Al Sweigart           | Beginners in Python, data enthusiasts, system admins | Practical applications, easy to follow | Python basics, CSV, PDF, Excel, web scraping, images, email, debugging, and more.   |
| [How To Code in Python](https://www.digitalocean.com/community/tutorial-series/how-to-code-in-python-3) | Lisa Tagliaferri,  Pankaj | New to Python and refresher seekers | Practical, digestable, pleasant | Python basics, installation, debugging logging, data types, hints and tips.|
| [Learning Python](https://github.com/Quyaz/books/blob/master/Learning%20Python,%205th%20Edition.pdf) |  Mark Lutz | New to Python | Broad and deep exploration of Python. |  Python basics,  into advanced Python features |
| [Problem Solving with Algorithms and Data Structures using Python](https://runestone.academy/ns/books/published/pythonds3/index.html) |  Brad Miller, David Ranum | New to Python and computer science | Classic concepts, topically diverse, smart. | Data structures, algorithms, fundamentals of Python |
| [Python for you and me](https://pymbook.readthedocs.io/en/latest/) | Kushal Das | New to Python | step-by-step pace, contains variety | Python fundamentals, editors, PEP8, testings, NeoPixels, command line interfaces.|
| [The Hitchhiker’s Guide to Python!](https://docs.python-guide.org/)      | Kenneth Reitz, Trey Hunner  | New and experienced Python users | Practical, enjoyable, broad. | Python basics, installation, virtual environments, project structure, coding style, documentation, packaging, GUI development, command line interface development, and much more. |


**Intermediate**

| Book Name                    | Authors                  | Audience                   | Strengths                           | Topics                        |
|:-----------------------------|:-----------------------:|:-----------------------:|:-------------------------------:|:-------------------------------:|
| [Intermediate Python](https://book.pythontips.com/en/latest/) | Muhammad Yasoob Ullah Khalid | Intermediate Python developers | dvanced yet understandable concepts, unique among Python programming books | Debugging, exception handling, functional programming, mutable/immutable types, and much more.   |
| [Python Data Science Handbook](https://automatetheboringstuff.com/) | Jake VanderPlas | already familiar with Python and/or programming, hoping to learn tools for data science | nerdy and practical | Numpy, Pandas, Matplotlib, machine learning, and other hip subject matter   |



**Advanced**

| Book Name                    | Authors                  | Audience                   | Strengths                           | Topics                        |
|:-----------------------------|:-----------------------:|:-----------------------:|:-------------------------------:|:-------------------------------:|
| [Architecture Patterns with Python](https://www.cosmicpython.com/l) | Harry J.W. Percival, Bob Gregory |  Intermediate to advanced Python developers  | Explains deep concepts in thorough but understandable ways, introduces advanced design concepts|Test Drive Development, Domain Driven Design, microservices |

**Specific Topics**

| Book Name                    | Authors                  | Audience                   | Strengths                           | Topics                        |
|:-----------------------------|:-----------------------:|:-----------------------:|:-------------------------------:|:-------------------------------:|
| [Python Data Science Handbook](https://automatetheboringstuff.com/) | Jake VanderPlas | already familiar with Python and/or programming, hoping to learn tools for data science | nerdy and practical | Numpy, Pandas, Matplotlib, machine learning, and other hip subject matter   |

<br>
