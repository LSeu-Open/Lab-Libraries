# Getting Started with Jupyter Notebook for Python

**Level: Intermediate** (some Python experience recommended)

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
  - [Installing Python](#installing-python)
  - [Installing Jupyter](#installing-jupyter)
  - [Optional: Anaconda](#optional-anaconda)
- [Creating and running your first notebook](#creating-and-running-your-first-notebook)
- [The notebook interface](#the-notebook-interface)
  - [Layout](#layout)
  - [Cells](#cells)
  - [The .ipynb file](#the-ipynb-file)
  - [Markdown](#markdown)
  - [Kernels](#kernels)
- [Example analysis](#example-analysis)
  - [Setup](#setup)
  - [Loading the data](#loading-the-data)
  - [Saving and checkpointing](#saving-and-checkpointing)
  - [Investigating the data set](#investigating-the-data-set)
  - [Plotting with Matplotlib](#plotting-with-matplotlib)
- [Official documentation](#official-documentation)

## Introduction

Jupyter Notebook is an open-source web application for creating documents that combine live
code, equations, visualizations, and narrative text. It is widely used in data science,
machine learning, and scientific computing because it supports interactive,
reproducible work.

By the end of this tutorial you will be able to:

- Install Jupyter on your machine.
- Create and run a notebook.
- Navigate the notebook interface.
- Understand cells, Markdown, and kernels.
- Perform a simple data analysis and visualization.

> [!NOTE]
> Since 2023, `jupyter notebook` launches **Notebook 7**, which is built on JupyterLab.
> The interface is similar to earlier versions but is organized around the open document.
> The commands and concepts in this tutorial apply to Notebook 7 and to JupyterLab, which
> you can launch with `jupyter lab`.

## Prerequisites

- **Basic Python** — familiarity with variables, data types, loops, and functions. If you
  are new to Python, start with
  [A Method to Learn Python from scratch](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Python/A-Method-to-Learn-Python-from-scratch.md).
- **Basic command-line skills** — to install packages and launch Jupyter.
- **An internet connection** — to download Python, Jupyter, and the example data.
- **Optional: basic data-science knowledge** — familiarity with NumPy, pandas, and
  Matplotlib is helpful but not required.

## Installation

### Installing Python

1. Download the latest Python 3 installer from the
   [official Python website](https://www.python.org/downloads/).
2. Run the installer. On Windows, select **Add Python to PATH**.
3. Verify the installation:
   ```sh
   python --version
   ```

### Installing Jupyter

1. Open a terminal (Command Prompt on Windows, Terminal on macOS, or a terminal emulator
   on Linux).
2. Install Jupyter with pip:
   ```sh
   pip install jupyter
   ```
3. Verify the installation:
   ```sh
   jupyter --version
   ```

### Optional: Anaconda

[Anaconda](https://www.anaconda.com/download) is a Python distribution that bundles Jupyter
with many data-science packages, which can simplify setup. See
[Setting Up a Python Development Environment](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Python/setting-up-a-python-virtual-environment.md)
for more on Anaconda and Conda. After installing, verify it with `conda --version` and
`jupyter --version`.

## Creating and running your first notebook

1. **Start the Jupyter server.** From the directory where you want to work, run:
   ```sh
   jupyter notebook
   ```
   This starts the server and opens the interface in your browser.
2. **Create a notebook.** In the file browser, click **New** and select a **Python 3**
   kernel. The notebook opens in a new tab.
3. **Rename it.** Click the notebook title (default *Untitled*) and enter a new name.
4. **Add and run a code cell.** Type the following into the first cell, then press
   `Shift + Enter` to run it. The output appears below the cell.
   ```python
   print("Hello, Jupyter!")
   ```
5. **Add a Markdown cell.** Add a cell, change its type to **Markdown**, enter some text,
   and run it to render the formatted text:
   ```markdown
   ## Welcome to Jupyter

   This is a Markdown cell for text, headings, and other formatting.
   ```
6. **Save.** Use **File > Save** (or `Ctrl + S`). The notebook is saved with a `.ipynb`
   extension.

## The notebook interface

### Layout

The interface is organized around the open notebook:

- A **menu bar** (File, Edit, View, Run, Kernel, Settings, Help) for file operations,
  editing, running cells, and managing the kernel.
- A **toolbar** with buttons for common actions: save, add a cell, run, stop, and restart
  the kernel.
- The **notebook area**, where you write and run cells.

### Cells

A cell is an individual section of the notebook. There are two main types:

- **Code cells** run Python code.
- **Markdown cells** contain formatted text.

Switch a cell's type from the toolbar, or press `Esc` then `M` for Markdown or `Y` for
code. Run a cell with `Shift + Enter`.

### The .ipynb file

The `.ipynb` file (Interactive Python Notebook) stores the notebook's content — code,
text, and output — as a single document.

### Markdown

Markdown is a lightweight markup language for formatting text. In Markdown cells you can
add headings, lists, links, images, and other formatting.

### Kernels

The kernel is the process that runs the code in a notebook. The default kernel is Python,
and kernels for other languages are available.

## Example analysis

*Adapted from a tutorial by Benjamin Pryke (Dataquest).*

> [!IMPORTANT]
> This section performs a small data analysis. It assumes a working knowledge of Python
> and some familiarity with pandas. It uses the `fortune500.csv` data set, which contains
> information about Fortune 500 companies.

### Setup

It is common to start with a cell for imports and setup, so you can edit and re-run it
without side effects.

```python
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
sns.set_theme(style="darkgrid")
```

We import `pandas` to work with the data, `matplotlib` to plot, and `seaborn` to style the
plots.

### Loading the data

Download the [fortune500.csv](https://github.com/pssguy/fortune500/blob/master/fortune500.csv)
file (use the **Download raw file** button on GitHub), then load it:

```python
df = pd.read_csv('fortune500.csv')
```

Loading the data in its own cell makes it easy to reload later.

### Saving and checkpointing

Save regularly with `Ctrl + S`, which runs the **Save and Checkpoint** command.

A checkpoint file is created alongside the notebook, in a hidden `.ipynb_checkpoints`
subdirectory. Jupyter also autosaves periodically (by default every two minutes). When you
save and checkpoint, both the notebook and the checkpoint are updated, so you can revert to
the last checkpoint via **File > Revert to Checkpoint** if needed.

### Investigating the data set

The data is loaded into a pandas `DataFrame`, a table-like structure. Look at the first and
last rows:

```python
df.head()
```

> `df.head()` returns the first 5 rows of the DataFrame.

```python
df.tail()
```

> `df.tail()` returns the last 5 rows of the DataFrame.

Each row corresponds to one company in one year. Rename the columns for convenience:

```python
df.columns = ['year', 'rank', 'company', 'revenue', 'profit']
```

Check the number of rows:

```python
len(df)
```

> `len(df)` returns the number of rows. This gives 25,500 rows — 500 per year from 1955 to
> 2005 inclusive.

Check that the columns were read with the expected data types:

```python
df.dtypes
```

> `df.dtypes` returns the data type of each column.

The `profit` column is not numeric, although we would expect a `float64` like `revenue`.
This suggests some non-numeric values are present:

```python
non_numeric_profits = df.profit.str.contains('[^0-9.-]')
df.loc[non_numeric_profits].head()
```

> This checks for non-numeric values in `profit` and shows the first rows that contain them.

Some values are strings used to indicate missing data. Check which values appear:

```python
set(df.profit[non_numeric_profits])
```

> This collects the distinct non-numeric values in `profit`.

How many rows are affected?

```python
len(df.profit[non_numeric_profits])
```

> This counts the non-numeric values. They are a small fraction (about 1.5%) of the data.

If the missing values are spread roughly evenly across years, removing them is reasonable.
Check their distribution by year:

```python
bin_sizes, _, _ = plt.hist(df.year[non_numeric_profits], bins=range(1955, 2006))
```

> This plots a histogram of the years with missing values.

The most missing values in any single year is fewer than 25 out of 500, so removing them
affects less than 5% of any year. Drop these rows and convert `profit` to a numeric type:

```python
df = df.loc[~non_numeric_profits]
df.profit = df.profit.apply(pd.to_numeric)
```

> This removes the non-numeric rows and converts `profit` to numeric values.

Verify the result:

```python
len(df)
```

```python
df.dtypes
```

### Plotting with Matplotlib

Plot the average profit by year. Define a small helper to reduce repetition:

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

Plot mean profit:

```python
fig, ax = plt.subplots()
plot(x, y1, ax, 'Increase in mean Fortune 500 company profits from 1955 to 2005', 'Profit (millions)')
```

The curve grows roughly exponentially, with dips that correspond to the early-1990s
recession and the dot-com bust. Plot mean revenue for comparison:

```python
y2 = avgs.revenue
fig, ax = plt.subplots()
plot(x, y2, ax, 'Increase in mean Fortune 500 company revenues from 1955 to 2005', 'Revenue (millions)')
```

Revenue was less affected by the downturns. Add the standard deviation to each plot:

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

The standard deviations are large: some companies make billions while others lose billions,
and that spread grows over time.

This workflow lets you investigate a data set in one place, without switching between
applications, and the result is shareable and reproducible. From here you could refine the
analysis — for example, comparing the volatility of the top and bottom companies.

## Official documentation

- **Jupyter Notebook** — [jupyter-notebook.readthedocs.io](https://jupyter-notebook.readthedocs.io/en/stable/)
- **JupyterLab** — [jupyterlab.readthedocs.io](https://jupyterlab.readthedocs.io/en/stable/)
- **pandas** — [pandas.pydata.org/docs](https://pandas.pydata.org/docs/)
- **Matplotlib** — [matplotlib.org/stable](https://matplotlib.org/stable/index.html)
- **seaborn** — [seaborn.pydata.org](https://seaborn.pydata.org/)
