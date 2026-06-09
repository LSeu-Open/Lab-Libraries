# Lab-Libraries

A curated collection of tutorials, guides, and learning resources for students and
researchers in the lab. It covers the practical computing skills used in day-to-day
scientific work: the command line, version control, Python, image analysis, and data
science.

> Looking to run something rather than learn? Ready-to-use, single-purpose scripts
> live in [lab-scripts](https://github.com/LSeu-Open/lab-scripts). This repository holds
> the **knowledge** (tutorials, guides, curated resources); the other holds the
> **runnable tools**.

## How this is organized

Entries are grouped by topic and tagged by level, so you can find material that matches
your experience:

- **Beginner** — assumes no prior knowledge.
- **Intermediate** — assumes working familiarity with the topic.
- **Advanced** — in-depth or specialized material.
- **All levels** — useful regardless of experience.

> [!NOTE]
> This collection is not exhaustive: omission does not imply exclusion, and inclusion is
> not an endorsement. Suggestions and additions are welcome through a pull request — see
> [CONTRIBUTING.md](CONTRIBUTING.md). Header images were generated locally with
> open image-generation models.

## Table of Contents

- [Fundamentals of Modern Development](#fundamentals-of-modern-development)
  - [Lists and Repositories](#lists-and-repositories-fundamentals)
  - [Local Tutorials](#local-tutorials-fundamentals)
  - [Learning Resources](#learning-resources-fundamentals)
- [Python](#python)
  - [Lists and Repositories](#lists-and-repositories-python)
  - [Local Tutorials](#local-tutorials-python)
  - [Learning Resources](#learning-resources-python)
- [Image Analysis](#image-analysis)
  - [Lists and Repositories](#lists-and-repositories-image-analysis)
  - [Libraries](#libraries-image-analysis)
  - [Local Tutorials](#local-tutorials-image-analysis)
  - [Scripts](#scripts-image-analysis)
  - [Learning Resources](#learning-resources-image-analysis)
- [Data Science](#data-science)
  - [Lists and Repositories](#lists-and-repositories-data-science)
  - [Learning Resources](#learning-resources-data-science)
- [Data Visualization](#data-visualization)
  - [Lists and Repositories](#lists-and-repositories-data-visualization)
  - [Libraries](#libraries-data-visualization)
  - [Tutorials](#tutorials-data-visualization)
- [Machine Learning](#machine-learning)
  - [Lists and Repositories](#lists-and-repositories-machine-learning)
  - [Libraries](#libraries-machine-learning)
  - [Learning Resources](#learning-resources-machine-learning)
- [Deep Learning](#deep-learning)
  - [Lists and Repositories](#lists-and-repositories-deep-learning)
  - [Libraries](#libraries-deep-learning)
  - [Learning Resources](#learning-resources-deep-learning)
- [Local Workshops](#local-workshops)

## Fundamentals of Modern Development

### Lists and Repositories <a name="lists-and-repositories-fundamentals"></a>

**AI for coding**

- [AIEnhancedWork](https://github.com/LSeu-Open/AIEnhancedWork?tab=readme-ov-file#coding-llms) — A curated collection of AI tools for coding and everyday work.

**Command line**

- [Awesome CLI](https://github.com/umutphp/awesome-cli) — A command-line tool for browsing Awesome lists.
- [Awesome CLI Apps](https://github.com/agarrharr/awesome-cli-apps) — A curated list of command-line applications.
- [Awesome CLI Frameworks](https://github.com/shadawck/awesome-cli-frameworks) — Tools for building command-line interfaces in several languages.
- [Awesome macOS CLI](https://github.com/phmullins/awesome-macos-commandline) — A curated list of command-line software for macOS.
- [Awesome Shell](https://github.com/alebcay/awesome-shell) — A curated list of command-line frameworks, toolkits, and guides.
- [Awesome Windows CLI](https://github.com/Awesome-Windows/awesome-windows-command-line) — A curated list of command-line tools for Windows.

**Virtualization and containers**

- [Awesome Compose](https://github.com/docker/awesome-compose) — Sample Docker Compose configurations.
- [Awesome Containers](https://github.com/borntorock/awesome-containers/blob/master/awesome-containers.md) — A curated list of open-source container resources.
- [Awesome Docker Compose Examples](https://github.com/Haxxnet/Compose-Examples) — Docker Compose examples for self-hosted open-source and proprietary projects.
- [Awesome Kubernetes](https://github.com/ramitsurana/awesome-kubernetes) — A curated list of Kubernetes resources.
- [Docker Tutorials and Labs](https://github.com/docker/labs) — A collection of tutorials for using Docker with various tools.

**Version control**

- [Awesome Git](https://github.com/dictcp/awesome-git) — A curated list of Git tools and resources.
- [Awesome VCS Tools](https://github.com/postpdm/awesome-vcs-tools) — A curated list of version-control tools, clients, and diff utilities.
- [Git/GitHub Cheat Sheet](https://github.com/tiimgreen/github-cheat-sheet) — A reference of Git and GitHub features.
- [Git and GitHub Learning Resources](https://docs.github.com/en/get-started/start-your-journey/git-and-github-learning-resources) — Official learning resources from GitHub.

### Local Tutorials <a name="local-tutorials-fundamentals"></a>

- [AI Assistance for Coding: Benefits, Challenges, and Best Practices](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/AI-Assisted-Coding.md) — Beginner
- [Basic Understanding of the Command Line](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Basic-Understanding-of-the-Command-Line.md) — Beginner
- [Using LLMs in your Integrated Development Environment (IDE)](https://github.com/LSeu-Open/AIEnhancedWork/blob/main/Tutorials/integrating-ai-models-into-ide.md) — Beginner
- [Introduction to Virtualization](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Virtualization.md) — Intermediate
- [Introduction to Version Control Systems (VCS)](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Introduction-to-Version-Control-System.md) — Intermediate
- [Introduction to Continuous Integration / Continuous Deployment (CI/CD)](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Continuous%20Integration-Continuous%20Deployment.md) — Intermediate

### Learning Resources <a name="learning-resources-fundamentals"></a>

#### Interactive courses

| Resource | Level | Format | Topics |
|:---|:---|:---|:---|
| [Learn the Command Line (Codecademy)](https://www.codecademy.com/learn/learn-the-command-line) | Beginner | Lessons + online interpreter | Navigation, file management, redirection, environment configuration |
| [Git Tutorial (w3schools)](https://www.w3schools.com/git/) | Intermediate | Lessons + online interpreter | Git fundamentals |
| [Learn Git & GitHub (Codecademy)](https://www.codecademy.com/learn/learn-git) | Intermediate | Lessons + online interpreter | Git and GitHub fundamentals |

#### Tutorials

| Title | Author | Level | Format | Topics |
|:---|:---|:---|:---|:---|
| [Cheat Sheet: Unix/Mac Commands](https://learntocodewith.me/resources/unix-command-cheat-sheet/) | Laurence Bradford | Beginner | Cheat sheet | macOS command line |
| [Command Line Crash Course](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Understanding_client-side_tools/Command_line) | Mozilla | Beginner | Tutorial with examples | Command-line fundamentals |
| [Command Line for Beginners](https://www.freecodecamp.org/news/command-line-for-beginners/) | freeCodeCamp | Beginner | Tutorial with examples | Command-line fundamentals |
| [Learning the Shell](https://linuxcommand.org/lc3_learning_the_shell.php) | LinuxCommand | Beginner | Tutorial with examples | Shell fundamentals |
| [The Art of Command Line](https://github.com/jlevy/the-art-of-command-line?tab=readme-ov-file#one-liners) | Joshua Levy | Beginner | Tutorial with examples | Command-line fundamentals |
| [The Front-End Developer's Guide to the Terminal](https://www.joshwcomeau.com/javascript/terminal-for-js-devs/#cycling-and-toggling-commands-15) | Josh Comeau | Beginner | Tutorial with examples | Terminal usage |
| [The Linux Command Line for Beginners](https://ubuntu.com/tutorials/command-line-for-beginners#1-overview) | Ubuntu | Beginner | Tutorial with examples | Linux command line |
| [Windows Commands](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands) | Microsoft | Beginner | Documentation | Windows command line |
| [A Docker Tutorial for Beginners](https://docker-curriculum.com/) | Prakhar Srivastav | Intermediate | Tutorial with examples | Docker fundamentals |
| [A Step-by-Step Docker Tutorial for Beginners](https://www.simplilearn.com/tutorials/docker-tutorial) | Sana Afreen | Intermediate | Tutorial with examples | Docker fundamentals |
| [Docker Tutorial for Beginners](https://www.youtube.com/watch?v=pTFZFxd4hOI) | Programming with Mosh | Intermediate | Video | Docker fundamentals |
| [Learn Docker in 2 Hours](https://www.youtube.com/watch?v=zJ6WbK9zFpI) | KodeKloud | Intermediate | Video | Docker fundamentals |
| [Docker Tutorial](https://www.geeksforgeeks.org/docker-tutorial/) | GeeksforGeeks | Intermediate | Tutorial with examples | Docker fundamentals |

#### Books

| Title | Authors | Level | Topics |
|:---|:---|:---|:---|
| [The Command Line Crash Course](https://cglab.ca/~morin/teaching/1405/clcc/book/cli-crash-course.html) | Zed A. Shaw | Beginner | Command-line fundamentals |
| [The Linux Command Line](https://sourceforge.net/projects/linuxcommand/files/TLCL/19.01/TLCL-19.01.pdf/download) | William Shotts | Beginner | Linux command line, from basics to shell scripting |
| [The Docker Handbook — Learn Docker for Beginners](https://www.freecodecamp.org/news/the-docker-handbook/) | Farhan Hasin Chowdhury | Intermediate | Docker fundamentals |

## Python

### Lists and Repositories <a name="lists-and-repositories-python"></a>

- [Awesome Python](https://github.com/vinta/awesome-python) — An opinionated list of Python frameworks, libraries, software, and resources.
- [Awesome Python Applications](https://github.com/mahmoud/awesome-python-applications) — Open-source applications written in Python.
- [Awesome Python Books](https://github.com/junnplus/awesome-python-books) — A directory of Python books.
- [Awesome Python Resources](https://github.com/DjangoEx/awesome-python-resources) — A curated list of Python learning resources.
- [Fucking Awesome Python](https://github.com/trananhkma/fucking-awesome-python) — A fork of awesome-python with additional resources.

### Local Tutorials <a name="local-tutorials-python"></a>

- [A Method to Learn Python from Scratch](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Python/A-Method-to-Learn-Python-from-scratch.md) — Beginner
- [Setting up a Python Virtual Environment](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Python/setting-up-a-python-virtual-environment.md) — Beginner
- [Getting Started with Jupyter Notebook for Python](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Python/Getting-Started-With-Jupyter-Notebook-for-Python.md) — Intermediate

### Learning Resources <a name="learning-resources-python"></a>

Reference: [Official Python Documentation](https://wiki.python.org/moin/FrontPage).

#### Interactive courses

| Resource | Level | Format | Topics |
|:---|:---|:---|:---|
| [Codédex](https://www.codedex.io/python) | Beginner | Interactive lessons + online interpreter | Fundamentals and more |
| [LearnPython](https://www.learnpython.org) | Beginner | Lessons + online interpreter | Fundamentals and more |
| [PyFlo](https://pyflo.net) | Beginner | Lessons + quizzes | Fundamentals and more |
| [Kaggle: Intro to Programming](https://www.kaggle.com/learn/intro-to-programming) | Beginner | Lessons + online interpreter | Programming fundamentals |
| [Kaggle: Python](https://www.kaggle.com/learn/python) | Beginner | Lessons + online interpreter | Builds on Intro to Programming |
| [Kaggle: Pandas](https://www.kaggle.com/learn/pandas) | Intermediate | Lessons + online interpreter | Data manipulation |
| [HackInScience](https://www.hackinscience.org) | All levels | Online interpreter | Wide range of topics |
| [w3schools](https://www.w3schools.com/python/default.asp) | All levels | Lessons + online interpreter | Wide range of topics |

#### Tutorials

| Title | Author | Level | Format | Topics |
|:---|:---|:---|:---|:---|
| [Dive Into Python 3](https://diveintopython3.net/) | Mark Pilgrim | Beginner | Tutorial with examples | Fundamentals and more |
| [Playground and Cheatsheet for Learning Python](https://github.com/trekhleb/learn-python) | Oleksii Trekhleb | Beginner | Tutorial with examples | Fundamentals and more |
| [Python Programming Beginner Tutorials](https://www.youtube.com/playlist?list=PL-osiE80TeTskrapNbzXhwoFUiLCjGgY7) | Corey Schafer | Beginner | Video series | Fundamentals and more |
| [Python Tutorials (PythonSpot)](https://pythonspot.com/) | PythonSpot | Beginner | Tutorial with examples | Fundamentals and more |
| [Python Tutorials (Tutorialspoint)](https://www.tutorialspoint.com/python/index.htm) | Tutorialspoint | Beginner | Tutorial with examples | Fundamentals and more |
| [Python Tutorials (Studytonight)](https://www.studytonight.com/python/) | Studytonight | Beginner | Tutorial with examples | Fundamentals and more |
| [Python Tutorials (ThePythonGuru)](https://thepythonguru.com/) | ThePythonGuru | Beginner | Tutorial with examples | Fundamentals and more |
| [Python for You and Me](https://pymbook.readthedocs.io/en/latest/) | Kushal Das | Beginner | Tutorial with examples | Fundamentals and more |
| [Real Python](https://realpython.com/) | Real Python | All levels | Articles and videos | Wide range of topics |

#### Books

| Title | Authors | Level | Topics |
|:---|:---|:---|:---|
| [A Byte of Python](https://python.swaroopch.com/) | Swaroop C. H. | Beginner | Python fundamentals and problem solving |
| [Automate the Boring Stuff with Python](https://automatetheboringstuff.com/) | Al Sweigart | Beginner | Python basics, CSV, PDF, Excel, web scraping, images, email, debugging |
| [How to Code in Python](https://www.digitalocean.com/community/tutorial-series/how-to-code-in-python-3) | Lisa Tagliaferri, Pankaj | Beginner | Python basics, debugging, logging, data types |
| [Learning Python](https://github.com/Quyaz/books/blob/master/Learning%20Python,%205th%20Edition.pdf) | Mark Lutz | Beginner | Python basics through advanced features |
| [Problem Solving with Algorithms and Data Structures using Python](https://runestone.academy/ns/books/published/pythonds3/index.html) | Brad Miller, David Ranum | Beginner | Data structures, algorithms, Python fundamentals |
| [Python for You and Me](https://pymbook.readthedocs.io/en/latest/) | Kushal Das | Beginner | Python fundamentals, editors, PEP 8, testing, command-line interfaces |
| [The Hitchhiker's Guide to Python](https://docs.python-guide.org/) | Kenneth Reitz, Trey Hunner | Beginner | Environments, project structure, coding style, packaging, documentation |
| [Intermediate Python](https://book.pythontips.com/en/latest/) | Muhammad Yasoob Ullah Khalid | Intermediate | Debugging, exceptions, functional programming, mutability |
| [Python Data Science Handbook](https://jakevdp.github.io/PythonDataScienceHandbook/) | Jake VanderPlas | Intermediate | NumPy, Pandas, Matplotlib, scikit-learn |
| [Architecture Patterns with Python](https://www.cosmicpython.com/) | Harry J. W. Percival, Bob Gregory | Advanced | Test-driven development, domain-driven design, microservices |

## Image Analysis

### Lists and Repositories <a name="lists-and-repositories-image-analysis"></a>

- [Awesome Biological Image Analysis](https://github.com/LSeu-Open/awesome-biological-image-analysis) — A curated list of software, tools, pipelines, and plugins for biological image analysis.
- [Awesome Image Quality Assessment (IQA)](https://github.com/subeeshvasu/Awesome-Image-Quality-Assessment) — A collection of image-quality-assessment papers.
- [Awesome Image Distortion Correction](https://github.com/subeeshvasu/Awesome-Image-Distortion-Correction) — Resources on rolling-shutter effects and radial distortions.
- [Awesome Neuron Segmentation in EM Images](https://github.com/subeeshvasu/Awesome-Neuron-Segmentation-in-EM-Images) — Resources for 3D segmentation of neurites in electron-microscopy images.
- [Bioimage.io](https://bioimage.io/#/) — The BioImage Model Zoo, a model repository for bioimage analysis.
- [Bio-image Analysis Notebooks](https://haesleinhuepf.github.io/BioImageAnalysisNotebooks/intro.html) — Jupyter notebooks for bioimage analysis and GPU-accelerated image processing.
- [Segmentation Models](https://github.com/qubvel-org/segmentation_models.pytorch) — Semantic segmentation models with 500+ pretrained convolutional and transformer backbones.

### Libraries <a name="libraries-image-analysis"></a>

- [napari](https://napari.org/stable/) — A fast, interactive viewer for multi-dimensional images in Python.
- [scikit-image](https://github.com/scikit-image/scikit-image) — Image processing in Python.

### Local Tutorials <a name="local-tutorials-image-analysis"></a>

- [Automate Cellpose GUI Opening](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Image%20Analysis/Automate_Cellpose_GUI_Opening.md) — Beginner
- [Intersection over Union (IoU): Evaluating Segmentation Performance](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Image%20Analysis/Intersection_over_Union.md) — Beginner
- [Mastering Cellpose: From Installation to Advanced Features](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Image%20Analysis/Mastering_Cellpose.md) — Beginner

### Scripts <a name="scripts-image-analysis"></a>

> [!NOTE]
> Cellpose-Gradio, a graphical interface for Cellpose, is available on GitHub:
> [Cellpose_Gradio](https://github.com/LSeu-Open/Cellpose_Gradio). Its installation and
> launch are automated with the scripts below.

- [Automate Cellpose GUI Opening — Windows (.bat)](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Scripts/launch_cellpose.bat)
- [Automate Cellpose GUI Opening — macOS/Linux (.sh)](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Scripts/launch_cellpose.sh)

> [!TIP]
> Additional single-purpose lab scripts (image and data conversion, mesh generation,
> neuro-visualization, and more) live in the companion
> [lab-scripts](https://github.com/LSeu-Open/lab-scripts) repository.

### Learning Resources <a name="learning-resources-image-analysis"></a>

#### Tutorials

| Title | Author | Level | Format | Topics |
|:---|:---|:---|:---|:---|
| [Batch Processing](https://haesleinhuepf.github.io/BioImageAnalysisNotebooks/33_batch_processing/readme.html) | haesleinhuepf | Beginner | Tutorial with examples | Processing multiple images |
| [Cell Classification](https://haesleinhuepf.github.io/BioImageAnalysisNotebooks/27_cell_classification/readme.html) | haesleinhuepf | Beginner | Tutorial with examples | Feature extraction and machine learning for object classification |
| [Colocalization](https://haesleinhuepf.github.io/BioImageAnalysisNotebooks/28_colocalization/readme.html) | haesleinhuepf | Beginner | Tutorial with examples | Counting cells by signal across multiple channels |
| [Deep-Learning-Based Image Segmentation](https://haesleinhuepf.github.io/BioImageAnalysisNotebooks/20b_deep_learning/readme.html) | haesleinhuepf | Beginner | Tutorial with examples | Deep-learning algorithms for image segmentation |
| [Feature Extraction](https://haesleinhuepf.github.io/BioImageAnalysisNotebooks/22_feature_extraction/readme.html) | haesleinhuepf | Beginner | Tutorial with examples | Quantitative measurements from image data |
| [Image Segmentation](https://haesleinhuepf.github.io/BioImageAnalysisNotebooks/20_image_segmentation/readme.html) | haesleinhuepf | Beginner | Tutorial with examples | Subdividing an image into regions |
| [Machine Learning for Image Segmentation](https://haesleinhuepf.github.io/BioImageAnalysisNotebooks/20a_pixel_classification/readme.html) | haesleinhuepf | Beginner | Tutorial with examples | Pixel classification and probability maps |
| [scikit-image: Image Processing](https://scipy-lectures.org/packages/scikit-image/index.html) | Emmanuelle Gouillart | Beginner | Tutorial with examples | scikit-image fundamentals |
| [scikit-image Tutorials](https://github.com/scikit-image/skimage-tutorials) | scikit-image | Beginner | Tutorial with examples | A collection of scikit-image tutorials |
| [Segmentation Post-Processing](https://haesleinhuepf.github.io/BioImageAnalysisNotebooks/20h_segmentation_post_processing/readme.html) | haesleinhuepf | Beginner | Tutorial with examples | Post-processing segmentation results |
| [Graphical User Interfaces](https://haesleinhuepf.github.io/BioImageAnalysisNotebooks/31_graphical_user_interfaces/readme.html) | haesleinhuepf | Intermediate | Tutorial with examples | Building custom user interfaces |

#### Video tutorials

| Title | Author | Level | Format | Topics |
|:---|:---|:---|:---|:---|
| [Cellpose 2.0: How to Train Your Own Cellular Segmentation Model](https://www.youtube.com/watch?v=A_PW_N0np9A) | Carsen Stringer | Beginner | Video | Human-in-the-loop training of specialist models |
| [Cellpose GPU Installation for QuPath and Fiji](https://www.youtube.com/watch?v=yx4w4E4v1uM) | Thierry Pécot | Beginner | Video | GPU-accelerated Cellpose in QuPath and Fiji |
| [Feature Extraction](https://www.youtube.com/watch?v=dria4wCiaz0) | haesleinhuepf | Beginner | Video | Quantitative measurements from image data |
| [Fiji for Quantification: Cell Segmentation](https://www.youtube.com/watch?v=82N-eIPqnwM) | Melbourne Advanced Microscopy Facility | Beginner | Video | Cell segmentation in Fiji |
| [Introduction to QuPath](https://www.youtube.com/watch?v=mvZlU_fI75o) | Zbigniew Mikulski | Beginner | Video | Core concepts and tools in QuPath |
| [Nuclei Segmentation with StarDist in QuPath](https://www.youtube.com/watch?v=GBFBVT2stMQ) | Thierry Pécot | Beginner | Video | Nuclei segmentation in multiplexed images |

## Data Science

### Lists and Repositories <a name="lists-and-repositories-data-science"></a>

- [AI Expert Roadmap](https://github.com/AMAI-GmbH/AI-Expert-Roadmap) — A roadmap for becoming an artificial-intelligence specialist.
- [Awesome Data Science](https://github.com/academic/awesome-datascience) — A data-science repository for learning and applying methods to real-world problems.
- [Awesome Python Data Science](https://github.com/krzjoa/awesome-python-data-science) — A curated list of data-science software in Python.
- [Data Analysis](https://github.com/WillKoehrsen/Data-Analysis) — Code and notebooks for numerous data-science projects in Python and R.
- [Data Science for Beginners](https://github.com/microsoft/Data-Science-For-Beginners) — A Microsoft course: 10 weeks, 20 lessons.
- [Data Science IPython Notebooks](https://github.com/donnemartin/data-science-ipython-notebooks) — Notebooks on deep learning, scikit-learn, big data, Matplotlib, pandas, NumPy, and SciPy.
- [Python Data Science Handbook](https://github.com/jakevdp/PythonDataScienceHandbook) — The full text of the handbook in Jupyter notebooks.
- [Python Data Science Tutorials](https://github.com/ujjwalkarn/DataSciencePython) — Common data-analysis and machine-learning tasks in Python.

### Learning Resources <a name="learning-resources-data-science"></a>

#### Interactive courses

| Resource | Level | Format | Topics |
|:---|:---|:---|:---|
| [w3schools: Data Science](https://www.w3schools.com/datascience/default.asp) | Beginner | Lessons + online interpreter | Fundamentals and more |
| [Kaggle: Feature Engineering](https://www.kaggle.com/learn/feature-engineering) | Intermediate | Lessons + online interpreter | Mutual information, clustering, principal component analysis |
| [Kaggle: Data Cleaning](https://www.kaggle.com/learn/data-cleaning) | Intermediate | Lessons + online interpreter | Missing values, scaling, normalization |

#### Tutorials

| Title | Author | Level | Format | Topics |
|:---|:---|:---|:---|:---|
| [Data Science Tutorial for Beginners](https://www.kaggle.com/code/kanncaa1/data-sciencetutorial-for-beginners) | DATAI Team | Beginner | Notebook | Fundamentals and more |
| [Data Science Full Course for Beginners](https://www.youtube.com/playlist?list=PLeo1K3hjS3us_ELKYSj_Fth2tIEkdKXvV) | codebasics | Beginner | Video series | Basics to advanced topics |
| [Learn Data Science from Scratch](https://data-flair.training/blogs/data-science-tutorials-home/) | DataFlair | All levels | Tutorial with examples | Basics to advanced topics |

#### Books

| Title | Authors | Level | Topics |
|:---|:---|:---|:---|
| [Foundations of Data Science](https://www.cs.cornell.edu/jeh/book.pdf) | Avrim Blum, John Hopcroft, Ravindran Kannan | Beginner | Mathematical foundations of data science |
| [Feature Engineering and Selection: A Practical Approach for Predictive Models](http://www.feat.engineering/index.html) | Max Kuhn, Kjell Johnson | Intermediate | Measuring performance, tuning, model optimization, exploratory visualization |

## Data Visualization

### Lists and Repositories <a name="lists-and-repositories-data-visualization"></a>

- [Awesome Dataviz](https://github.com/hal9ai/awesome-dataviz) — A curated list of data-analysis and visualization tools.
- [Awesome Data Science Viz](https://github.com/quantmind/awesome-data-science-viz) — A curated list of data-visualization libraries and resources.
- [Exploring Data with Python](https://github.com/StephenElston/ExploringDataWithPython) — Methods for data exploration and visualization in Python.
- [Python Data Viz Workshop](https://github.com/stefmolin/python-data-viz-workshop) — A workshop on data visualization in Python, with notebooks and exercises.

### Libraries <a name="libraries-data-visualization"></a>

- [Awesome ggplot2](https://github.com/erikgahner/awesome-ggplot2) — A curated list of tutorials and packages for ggplot2, the plotting system for the R language.

### Tutorials <a name="tutorials-data-visualization"></a>

- [Matplotlib Tutorials](https://matplotlib.org/stable/users/index.html#users-guide-index) — Matplotlib creates static, animated, and interactive 2D and 3D visualizations in Python. (Beginner)
- [Plotly Tutorials](https://plotly.com/graphing-libraries/) — Plotly is an open-source graphing library for interactive plots in Python, R, and MATLAB. (Beginner)
- [Seaborn Tutorials](https://seaborn.pydata.org/tutorial.html) — Seaborn is a Matplotlib-based library for statistical graphics in Python. (Beginner)
- [Visualization with Pandas](https://pandas.pydata.org/pandas-docs/version/0.18.0/visualization.html) — Plotting directly from pandas data structures. (Beginner)

## Machine Learning

### Lists and Repositories <a name="lists-and-repositories-machine-learning"></a>

- [Applied ML](https://github.com/eugeneyan/applied-ml) — Papers and engineering blog posts on data science and machine learning in production.
- [Awesome Machine Learning](https://github.com/josephmisiti/awesome-machine-learning) — A curated list of machine-learning frameworks, libraries, and software.
- [Best-of Machine Learning with Python](https://github.com/ml-tooling/best-of-ml-python) — A ranked, weekly-updated list of machine-learning libraries in Python.
- [Machine Learning & Deep Learning Tutorials](https://github.com/ujjwalkarn/Machine-Learning-Tutorials) — Machine-learning and deep-learning tutorials, articles, and resources.
- [Machine Learning for Beginners](https://github.com/microsoft/ML-For-Beginners) — A Microsoft course: 12 weeks, 26 lessons, 52 quizzes.
- [Machine Learning from Scratch](https://github.com/DorsaRoh/Machine-Learning) — Core machine-learning algorithms and neural networks implemented and explained from first principles.

### Libraries <a name="libraries-machine-learning"></a>

- [caret](https://cran.r-project.org/web/packages/caret/index.html) — A model-training and tuning framework for R.
- [cuML](https://github.com/rapidsai/cuml) — GPU-accelerated machine-learning algorithms for tabular data, without requiring CUDA programming.
- [mlpack](https://github.com/mlpack/mlpack) — A header-only C++ machine-learning library with bindings to other languages.
- [scikit-learn](https://scikit-learn.org/stable/) — A Python machine-learning library built on SciPy.

### Learning Resources <a name="learning-resources-machine-learning"></a>

#### Interactive courses

| Resource | Level | Format | Topics |
|:---|:---|:---|:---|
| [DataCamp: Machine Learning in R for Beginners](https://www.datacamp.com/tutorial/machine-learning-in-r) | Beginner | Lessons + online interpreter | Introduction to machine learning in R |
| [Kaggle: Introduction to Machine Learning](https://www.kaggle.com/learn/intro-to-machine-learning) | Beginner | Lessons + online interpreter | Fundamentals and more |
| [Kaggle: Machine Learning Explainability](https://www.kaggle.com/learn/machine-learning-explainability) | Beginner | Lessons + online interpreter | Interpreting model predictions |
| [w3schools: Machine Learning](https://www.w3schools.com/python/python_ml_getting_started.asp) | Beginner | Lessons + online interpreter | Fundamentals and more |
| [Kaggle: Intermediate Machine Learning](https://www.kaggle.com/learn/intermediate-machine-learning) | Intermediate | Lessons + online interpreter | Missing values, categorical data, data leakage |
| [Kaggle: Time Series](https://www.kaggle.com/learn/time-series) | Intermediate | Lessons + online interpreter | Forecasting with machine learning |

#### Tutorials

| Title | Author | Level | Format | Topics |
|:---|:---|:---|:---|:---|
| [Machine Learning Crash Course](https://www.youtube.com/playlist?list=PLQY2H8rRoyvwWuPiWnuTDBHe7I0fMSsfO) | Google | Beginner | Video + quizzes | Fundamentals and more |
| [Machine Learning Tutorial for Beginners](https://www.kaggle.com/code/kanncaa1/machine-learning-tutorial-for-beginners) | DATAI Team | Intermediate | Notebook | Fundamentals and more |
| [Testing and Debugging in Machine Learning](https://developers.google.com/machine-learning/testing-debugging) | Google | Intermediate | Lessons + quizzes | Validating data, debugging, optimizing, and monitoring models |

#### Books

| Title | Authors | Level | Topics |
|:---|:---|:---|:---|
| [An Introduction to Machine Learning Interpretability](https://www.oreilly.com/library/view/an-introduction-to/9781492033158/) | Patrick Hall, Navdeep Gill | Beginner | Explaining model predictions |
| [Machine Learning for Humans](https://everythingcomputerscience.com/books/Machine%20Learning%20for%20Humans.pdf) | Vishal Maini, Samer Sabri | Beginner | Supervised learning, unsupervised learning, neural networks |
| [Python Machine Learning Projects](https://www.digitalocean.com/community/books/python-machine-learning-projects-a-digitalocean-ebook) | Brian Boucheron, Lisa Tagliaferri | Intermediate | Hands-on machine-learning projects |
| [Hands-On Machine Learning with R](https://bradleyboehmke.github.io/HOML/) | Bradley Boehmke, Brandon Greenwell | All levels | Clustering, autoencoders, regularized models, random forests, gradient boosting |
| [The Hundred-Page Machine Learning Book](https://themlbook.com/wiki/doku.php) | Andriy Burkov | All levels | Fundamental algorithms, anatomy of a learning algorithm, neural networks |
| [Understanding Machine Learning: From Theory to Algorithms](https://www.cs.huji.ac.il/~shais/UnderstandingMachineLearning/index.html) | Shai Shalev-Shwartz, Shai Ben-David | All levels | Theoretical foundations, learning models, advanced theory |

## Deep Learning

### Lists and Repositories <a name="lists-and-repositories-deep-learning"></a>

- [Awesome Deep Learning](https://github.com/ChristosChristofidis/awesome-deep-learning) — A curated list of deep-learning tutorials, projects, and communities.
- [Awesome — Most Cited Deep Learning Papers](https://github.com/terryum/awesome-deep-learning-papers) — The most-cited deep-learning papers.
- [Awesome Deep Vision](https://github.com/kjw0612/awesome-deep-vision) — A curated list of deep-learning resources for computer vision.
- [Awesome Deep Learning Papers and Resources](https://github.com/endymecy/awesome-deeplearning-resources) — Deep-learning and reinforcement-learning research papers and code.
- [CVAT](https://github.com/cvat-ai/cvat) — An image and video annotation tool for machine learning.
- [Deep Learning Drizzle](https://github.com/kmario23/deep-learning-drizzle) — A large collection of lecture series on deep learning, reinforcement learning, computer vision, and NLP.
- [Deep Learning Examples](https://github.com/NVIDIA/DeepLearningExamples) — Deep-learning example scripts organized by model, with reproducible training and deployment.
- [Supervision](https://github.com/roboflow/supervision) — Reusable computer-vision utilities.

### Libraries <a name="libraries-deep-learning"></a>

- [Catalyst](https://catalyst-team.com/) — A PyTorch framework for deep-learning research, focused on reproducibility, rapid experimentation, and code reuse.
- [Keras](https://keras.io/) — A multi-backend deep-learning framework supporting JAX, TensorFlow, and PyTorch, for computer vision, NLP, and audio.
- [PyTorch](https://pytorch.org/) — Tensors and dynamic neural networks in Python with GPU acceleration.
- [TensorFlow](https://tensorflow.org/) — An open-source machine-learning framework.
- [torchvision](https://pytorch.org/vision/stable/index.html) — Datasets, model architectures, and image transformations for computer vision.

### Learning Resources <a name="learning-resources-deep-learning"></a>

#### Interactive courses

| Resource | Level | Format | Topics |
|:---|:---|:---|:---|
| [Kaggle: Intro to Deep Learning](https://www.kaggle.com/learn/intro-to-deep-learning) | Intermediate | Lessons + online interpreter | Building and training neural networks with TensorFlow and Keras |
| [Kaggle: Computer Vision](https://www.kaggle.com/learn/computer-vision) | Intermediate | Lessons + online interpreter | Convolutional neural networks for image data |

#### Tutorials

| Title | Author | Level | Format | Topics |
|:---|:---|:---|:---|:---|
| [Basics of PyTorch](https://www.kaggle.com/code/kanncaa1/pytorch-tutorial-for-deep-learning-lovers) | DATAI Team | Intermediate | Notebook | Fundamentals and more |
| [Coding TensorFlow](https://www.youtube.com/playlist?list=PLQY2H8rRoyvwLbzbnKJ59NkZvQAW9wLbx) | TensorFlow | Intermediate | Video series | Wide range of topics |
| [Deep Learning Tutorial for Beginners](https://www.kaggle.com/code/kanncaa1/deep-learning-tutorial-for-beginners/notebook) | DATAI Team | Intermediate | Notebook | Fundamentals and more |
| [Deep Learning Zero to Hero](https://www.youtube.com/playlist?list=PLQY2H8rRoyvwWuPiWnuTDBHe7I0fMSsfO) | TensorFlow | Intermediate | Video series | TensorFlow fundamentals |
| [Roboflow Notebooks](https://github.com/roboflow/notebooks) | Roboflow | Intermediate | Notebook | State-of-the-art computer-vision models |

#### Books

| Title | Authors | Level | Topics |
|:---|:---|:---|:---|
| [Dive into Deep Learning](https://d2l.ai/) | Aston Zhang, Zachary C. Lipton, Mu Li, Alexander J. Smola | Intermediate | Deep learning with implementations in PyTorch, NumPy/MXNet, JAX, and TensorFlow |

## Local Workshops

- [Using LLMs to Write Code: Integrating LLMs into your IDE](https://github.com/LSeu-Open/AIEnhancedWork/blob/main/Tutorials/integrating-ai-models-into-ide.md)

_More workshops to be added._
