# Getting Started With Jupyter Notebook for Python

🟨 **Intermediate** (Recommended experience)

## Table of Content

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
  - [Installing Python](#installing-python)
  - [Installing Jupyter Notebook](#installing-jupyter-notebook)
- [Creating and Running Your First Jupyter Notebook](#creating-and-running-your-first-jupyter-notebook)
- [Notebook Interface and Dictionary](#notebook-interface-and-dictionary)
  - [Interface Overview](#interface-overview)
  - [Toolbar](#toolbar)
  - [Menu Bar](#menu-bar)
  - [Cells](#cells)
  - [.ipynb File](#ipynb-file)
  - [Markdown](#markdown)
  - [Kernels](#kernels)
- [Example Analysis](#example-analysis)
  - [Setup](#setup)
  - [Loading the Data](#loading-the-data)
  - [Saving and Checkpointing](#saving-and-checkpointing)
  - [Investigating Our Data Set](#investigating-our-data-set)
  - [Plotting with Matplotlib](#plotting-with-matplotlib)

<br>

## Introduction

Welcome to the tutorial on getting started with Jupyter Notebook for Python! 

`Jupyter Notebook` is an open-source web application that allows you to create and share documents that contain live code, equations, visualizations, and narrative text. It is widely used in data science, machine learning, and scientific computing communities due to its interactive and user-friendly interface.

In this tutorial, we will guide you through the basics of using Jupyter Notebook. Whether you are a beginner in Python programming or an experienced developer looking to explore Jupyter Notebook, this guide will help you get up and running quickly.

By the end of this tutorial, you will be able to:

- Understand the basics of Jupyter Notebook.
- Install Jupyter Notebook on your machine.
- Create and run your first Jupyter Notebook.
- Navigate the Jupyter Notebook interface.
- Understand key concepts such as cells, Markdown, and kernels.
- Perform a simple data analysis and visualization using Jupyter Notebook.

Let's get started!

<br>

## Prerequisites

Before you dive into using Jupyter Notebook, there are a few prerequisites you should have in place to ensure a smooth learning experience. Here are the key prerequisites:

1. ***Basic Understanding of Python***
- **Familiarity with Python Syntax**: While this tutorial will guide you through the basics of Jupyter Notebook, it assumes you have a basic understanding of Python programming. If you are new to Python, consider taking a beginner's Python course or tutorial first.
- **Basic Programming Concepts**: Knowledge of variables, data types, loops, and functions will be helpful.

2. ***Basic Computer Skills***
- **Operating System**: Familiarity with your operating system (Windows, macOS, or Linux) to install software and navigate directories.
- **Command Line**: Basic understanding of command-line interfaces (CLI) to run commands for installation and launching Jupyter Notebook.

3. ***Internet Access***
- **Download Software**: You will need an internet connection to download and install Python and Jupyter Notebook.
- **Access Online Resources**: Some sections of this tutorial may refer to online documentation or resources.

4. ***Software Requirements***
- **Python**: Ensure you have Python installed on your computer. This tutorial will guide you through the installation process if you don't have it already.

5. ***Optional: Basic Data Science Knowledge***
- **Data Handling**: Familiarity with data structures like lists, dictionaries, and arrays.
- **Libraries**: Basic knowledge of popular Python libraries like NumPy, Pandas, and Matplotlib can be beneficial but is not required.

By ensuring you have these prerequisites in place, you will be well-prepared to follow along with the tutorial and get the most out of your learning experience with Jupyter Notebook.

<br>

## Installation

To get started with Jupyter Notebook, you need to install Python and Jupyter Notebook on your computer. Follow the steps below to complete the installation process.

### Installing Python

1. **Download Python**:
   - Visit the official [Python website](https://www.python.org/downloads/).
   - Download the latest version of Python for your operating system (Windows, macOS, or Linux).

2. **Install Python**:
   - Run the downloaded installer.
   - Make sure to check the box that says "Add Python to PATH" during the installation process. This will allow you to run Python from the command line.
   - Follow the installation instructions and complete the installation.

3. **Verify Installation**:
   - Open a command line interface (CLI) on your computer.
   - Type `python --version` (or `python -V`) and press Enter. You should see the version of Python that you installed.

### Installing Jupyter Notebook

1. **Open Command Line Interface (CLI)**:
   - Open your command line interface (CLI). This could be Command Prompt on Windows, Terminal on macOS, or a terminal emulator on Linux.

2. **Install Jupyter Notebook**:
   - Type the following command and press Enter:
     
     ```sh
     pip install jupyter
     ```
   - This command uses the Python package installer (pip) to install Jupyter Notebook.

3. **Verify Installation**:
   - After the installation is complete, type the following command and press Enter:
     
     ```sh
     jupyter notebook --version
     ```
   - You should see the version of Jupyter Notebook that you installed.

### Optional: Installing Anaconda

Anaconda is a popular distribution of Python that includes Jupyter Notebook along with many other useful packages for data science and scientific computing. Installing Anaconda can simplify the setup process. See the [Setting Up a Python Development Environment](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Python/setting-up-a-python-virtual-environment.md) tutorial to learn more about Anaconda.

1. **Download Anaconda**:
   - Visit the official [Anaconda website](https://www.anaconda.com/products/distribution).
   - Download the Anaconda installer for your operating system.

2. **Install Anaconda**:
   - Run the downloaded installer.
   - Follow the installation instructions and complete the installation.

3. **Verify Installation**:
   - Open a command line interface (CLI).
   - Type `conda --version` and press Enter. You should see the version of Conda that you installed.
   - Type `jupyter notebook --version` and press Enter. You should see the version of Jupyter Notebook that comes with Anaconda.

By following these steps, you should have Python and Jupyter Notebook installed on your computer, ready for you to start creating and running notebooks.

<br>

## Notebook Interface and Dictionary

The Jupyter Notebook interface is designed to be intuitive and user-friendly. Here's a brief overview of the key components and some important terms you'll encounter:

### Interface Overview

The interface is divided into several main areas:

- **Toolbar**: Located at the top of the notebook, it contains buttons for common actions like saving, adding cells, and running cells.
- **Menu Bar**: Provides access to various menus for file operations, editing, and more.
- **Cells**: The main area where you write and execute code or Markdown text.

### Toolbar

The toolbar includes buttons for:

- **Save**: Save the current state of the notebook.
- **Add Cell**: Add a new cell above or below the current cell.
- **Run**: Execute the selected cell.
- **Interrupt**: Stop the execution of the current cell.
- **Restart**: Restart the kernel.

### Menu Bar

The menu bar includes several menus:

- **File**: Options for saving, opening, and exporting notebooks.
- **Edit**: Tools for editing cells and notebook content.
- **View**: Options for customizing the interface.
- **Insert**: Add new cells above or below the current cell.
- **Cell**: Actions related to cell execution and type.
- **Kernel**: Options for managing the kernel, including interrupting and restarting.
- **Help**: Access to documentation and resources.

### Dictionary

Here are some important terms and concepts related to Jupyter Notebook:

#### .ipynb File

- **Definition**: The file format used by Jupyter Notebooks. It stands for "Interactive Python Notebook".
- **Usage**: Stores the content of your notebook, including code, text, and output.

#### Cells

- **Definition**: Individual sections within a notebook where you can write and execute code or text.
- **Types**:
  - **Code Cells**: Used for writing and executing Python code.
  - **Markdown Cells**: Used for adding text, headings, and other formatting.
- **Switching Types**: You can switch between cell types using the dropdown menu in the toolbar or by pressing `Esc` followed by `M` for Markdown or `Y` for code.

#### Markdown

- **Definition**: A lightweight markup language used for formatting text in Jupyter Notebooks.
- **Usage**: Allows you to add headings, lists, links, images, and other formatting elements to your notebook.

#### Kernels

- **Definition**: The computational engine that executes the code in your notebook.
- **Usage**: Different kernels can be used for different programming languages, but the default kernel for Jupyter Notebook is Python.

By familiarizing yourself with these components and terms, you'll be able to navigate and use Jupyter Notebook effectively.

<br>

## Creating and Running Your First Jupyter Notebook

Now that you have installed Jupyter Notebook, let's create and run your first notebook. Follow these steps to get started:

### Running Jupyter Notebook

1. **Open Command Line Interface (CLI)**:
   - Open your command line interface (CLI). This could be Command Prompt on Windows, Terminal on macOS, or a terminal emulator on Linux.

2. **Start Jupyter Notebook**:
   - Navigate to the directory where you want to create your notebook.
   - Type the following command and press Enter:
     
     ```sh
     jupyter notebook
     ```
     
   - This command will start the Jupyter Notebook server and open a new tab in your default web browser with the Jupyter Notebook interface.

### Creating Your First Notebook

1. **Navigate to the Jupyter Notebook Interface**:
   - Once the Jupyter Notebook interface is open in your web browser, you will see a list of files and directories in the current directory.

2. **Create a New Notebook**:
   - Click on the "New" button in the top-right corner of the interface.
   - Select "Python 3" (or the appropriate Python version) from the dropdown menu. This will create a new notebook and open it in a new tab.

3. **Rename Your Notebook**:
   - By default, the notebook will be named "Untitled". To rename it, click on the "Untitled" text at the top of the notebook.
   - Enter a new name, such as "MyFirstNotebook", and press Enter.

4. **Add Code to Your Notebook**:
   - The notebook is divided into cells. By default, the first cell is a code cell.
   - Type the following Python code into the first cell:

     ```python
     print("Hello, Jupyter Notebook!")
     ```

5. **Run the Code Cell**:
   - To run the code in the cell, click on the cell to select it, then press `Shift + Enter` or click the "Run" button in the toolbar.
   - The output of the code will be displayed below the cell.

6. **Add a Markdown Cell**:
   - To add a new cell, click on the "+" button in the toolbar.
   - Change the cell type to "Markdown" by selecting "Markdown" from the dropdown menu in the toolbar.
   - Type the following Markdown text into the cell:

     ```markdown
     ## Welcome to Jupyter Notebook

     This is a markdown cell. You can use it to add text, headings, and other formatting to your notebook.
     ```

7. **Run the Markdown Cell**:
   - To render the Markdown text, click on the cell to select it, then press `Shift + Enter` or click the "Run" button in the toolbar.
   - The Markdown text will be rendered below the cell.

### Saving Your Notebook

1. **Save Your Notebook**:
   - To save your notebook, click on the "File" menu in the top-left corner of the interface.
   - Select "Save and Checkpoint" from the dropdown menu.
   - Your notebook will be saved with a `.ipynb` file extension.

By following these steps, you have successfully created and run your first Jupyter Notebook. You can now explore the interface and start using Jupyter Notebook for your data analysis and visualization projects.

<br>

## Example Analysis

**Provided by Benjamin Pryke from Dataquest**

> [!IMPORTANT]
> In this section, we will perform a simple data analysis using Jupyter Notebook. **Before we begin, please ensure you have a solid understanding of Python Basics and some experience working with pandas data.**
>
> We will use the `fortune500.csv` dataset, which contains information about Fortune 500 companies. We'll import the necessary libraries, load the data, clean it, and perform some basic analysis and visualization.

### Setup

It’s common to start off with a code cell specifically for imports and setup, so that if you choose to add or change anything, you can simply edit and re-run the cell without causing any side-effects.

```python
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
sns.set(style="darkgrid")
```

We'll import `pandas` to work with our data, `Matplotlib` to plot charts, and `Seaborn` to make our charts prettier.

### Loading the Data

Let’s go ahead and load our data. You can access the CSV file on this [github page](https://github.com/pssguy/fortune500/blob/master/fortune500.csv). Just click on the 3 dots button on the top right and download it.

```python
df = pd.read_csv('fortune500.csv')
```

It’s sensible to do this in a single cell, in case we need to reload it at any point.

### Saving and Checkpointing

Now we’ve got started, it’s best practice to save regularly. Pressing `Ctrl + S` will save our notebook by calling the “Save and Checkpoint” command.

Every time we create a new notebook, a checkpoint file is created along with the notebook file. It is located within a hidden subdirectory of your save location called `.ipynb_checkpoints` and is also a `.ipynb` file.

By default, Jupyter will autosave your notebook every 120 seconds to this checkpoint file without altering your primary notebook file. When you “Save and Checkpoint,” both the notebook and checkpoint files are updated. Hence, the checkpoint enables you to recover your unsaved work in the event of an unexpected issue.

You can revert to the checkpoint from the menu via “File > Revert to Checkpoint.”

### Investigating Our Data Set

Now we’re really rolling! Our notebook is safely saved and we’ve loaded our data set `df` into the most-used pandas data structure, which is called a DataFrame and basically looks like a table. What does ours look like?

```python
df.head()
```

> df.head(): Returns first 5 rows of pandas DataFrame df.

```python
df.tail()
```

> df.tail(): Returns last 5 rows of pandas DataFrame df.

Looking good. We have the columns we need, and each row corresponds to a single company in a single year.

Let’s just rename those columns so we can refer to them later.

```python
df.columns = ['year', 'rank', 'company', 'revenue', 'profit']
```

Next, we need to explore our data set. Is it complete? Did pandas read it as expected? Are any values missing?

```python
len(df)
```

> len(df) returns the number of rows in a pandas DataFrame df.

Okay, that looks good — that’s 500 rows for every year from 1955 to 2005, inclusive.

Let’s check whether our data set has been imported as we would expect. A simple check is to see if the data types (or dtypes) have been correctly interpreted.

```python
df.dtypes
```
> df.dtypes returns a Series containing data types of columns in the pandas DataFrame df.

Uh oh. It looks like there’s something wrong with the profits column — we would expect it to be a `float64` like the revenue column. This indicates that it probably contains some non-integer values, so let’s take a look.

```python
non_numeric_profits = df.profit.str.contains('[^0-9.-]')
df.loc[non_numeric_profits].head()
```
> This code checks for non-numeric values in the 'profit' column of a DataFrame df and then displays the first few rows containing those non-numeric values.

Just as we suspected! Some of the values are strings, which have been used to indicate missing data. Are there any other values that have crept in?

```python
set(df.profit[non_numeric_profits])
```
> This line of code extracts the non-numeric values from the 'profit' column of DataFrame df, and converts them into a Python set.

That makes it easy to interpret, but what should we do? Well, that depends how many values are missing.

```python
len(df.profit[non_numeric_profits])
```
> This code calculates the number of non-numeric values in the 'profit' column of DataFrame df.

It’s a small fraction of our data set, though not completely inconsequential as it is still around 1.5%.

If rows containing `N.A.` are, roughly, uniformly distributed over the years, the easiest solution would just be to remove them. So let’s have a quick look at the distribution.

```python
bin_sizes, _, _ = plt.hist(df.year[non_numeric_profits], bins=range(1955, 2006))
```
> This code creates a histogram from the data specified. The histogram is plotted on the current axes (from pyplot module).

At a glance, we can see that the most invalid values in a single year is fewer than 25, and as there are 500 data points per year, removing these values would account for less than 4% of the data for the worst years. Indeed, other than a surge around the 90s, most years have fewer than half the missing values of the peak.

For our purposes, let’s say this is acceptable and go ahead and remove these rows.

```python
df = df.loc[~non_numeric_profits]
df.profit = df.profit.apply(pd.to_numeric)
```

> This code updates the 'profit' column with converted numeric values for any remaining non-numeric entries.

We should check that worked.

```python
len(df)
```

```python
df.dtypes
```

Great! We have finished our data set setup.

### Plotting with Matplotlib

Next, we can get to addressing the question at hand by plotting the average profit by year. We might as well plot the revenue as well, so first we can define some variables and a method to reduce our code.

```python
group_by_year = df.loc[:, ['year', 'revenue', 'profit']].groupby('year')
avgs = group_by_year.mean()
x = avgs.index
y1 = avgs.profit

def plot(x, y, ax, title, y_label):
    ax.set_title(title)
    ax.set_ylabel(y_label)
    ax.plot(x, y)
    ax.margins(x=0, y=0)
```

Now let's plot!

```python
fig, ax = plt.subplots()
plot(x, y1, ax, 'Increase in mean Fortune 500 company profits from 1955 to 2005', 'Profit (millions)')
```

Wow, that looks like an exponential, but it’s got some huge dips. They must correspond to the early 1990s recession and the dot-com bubble. It’s pretty interesting to see that in the data. But how come profits recovered to even higher levels post each recession?

Maybe the revenues can tell us more.

```python
y2 = avgs.revenue
fig, ax = plt.subplots()
plot(x, y2, ax, 'Increase in mean Fortune 500 company revenues from 1955 to 2005', 'Revenue (millions)')
```

That adds another side to the story. Revenues were not as badly hit — that’s some great accounting work from the finance departments.

we can superimpose these plots with +/- their standard deviations.

```python
def plot_with_std(x, y, stds, ax, title, y_label):
    ax.fill_between(x, y - stds, y + stds, alpha=0.2)
    plot(x, y, ax, title, y_label)

fig, (ax1, ax2) = plt.subplots(ncols=2)
title = 'Increase in mean and std Fortune 500 company'
stds1 = group_by_year.std().profit.values
stds2 = group_by_year.std().revenue.values
plot_with_std(x, y1.values, stds1, ax1, title, 'Profit (millions)')
plot_with_std(x, y2.values, stds2, ax2, title, 'Revenue (millions)')
fig.set_size_inches(14, 4)
fig.tight_layout()
```

That’s staggering, the standard deviations are huge! Some Fortune 500 companies make billions while others lose billions, and the risk has increased along with rising profits over the years.

Perhaps some companies perform better than others; are the profits of the top 10% more or less volatile than the bottom 10%?

There are plenty of questions that we could look into next, and it’s easy to see how the flow of working in a notebook can match one’s own thought process. For the purposes of this tutorial, we'll stop our analysis here, but feel free to continue digging into the data on your own!

This flow helped us to easily investigate our data set in one place without context switching between applications, and our work is immediately shareable and reproducible. If we wished to create a more concise report for a particular audience, we could quickly refactor our work by merging cells and removing intermediary code.
```

This section provides a structured and concise example analysis using Jupyter Notebook, demonstrating how to load, clean, and analyze data, as well as how to create visualizations using Matplotlib and Seaborn.

<br>

## Official Documentation

- **Jupyter Notebook Documentation**: [Jupyter Notebook Documentation](https://jupyter-notebook.readthedocs.io/en/stable/)
- **Pandas Documentation**: [Pandas Documentation](https://pandas.pydata.org/docs/)
- **Matplotlib Documentation**: [Matplotlib Documentation](https://matplotlib.org/stable/contents.html)
- **Seaborn Documentation**: [Seaborn Documentation](https://seaborn.pydata.org/)
