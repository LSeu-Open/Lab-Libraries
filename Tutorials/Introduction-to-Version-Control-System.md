 # Introduction to Version Control System (VCS)

🟨 **Intermediate** (Recommended experience)

## Table of Contents

  - [Introduction](#introduction)
  - [Prerequisites](#prerequisites)
  - [Purpose of Version Control](#purpose-of-version-control)
  - [Benefits of Version Control](#benefits-of-version-control)
  - [Types of Version Control Systems](#types-of-version-control-systems)
    - [Centralized Version Control Systems (CVCS)](#centralized-version-control-systems-cvcs)
    - [Distributed Version Control Systems (DVCS)](#distributed-version-control-systems-dvcs)
  - [Git](#git)
    - [Introduction to Git](#introduction-to-git)
    - [Basic Git Commands](#basic-git-commands)
    - [Git Workflow](#git-workflow)
    - [Branching and Merging](#branching-and-merging)
    - [Collaboration with Git](#collaboration-with-git)
    - [Git Clients](#git-clients)
  - [Mercurial](#mercurial)
    - [Introduction to Mercurial](#introduction-to-mercurial)
    - [Basic Mercurial Commands](#basic-mercurial-commands)
    - [Mercurial Workflow](#mercurial-workflow)
    - [Branching and Merging](#branching-and-merging-mercurial)
    - [Collaboration with Mercurial](#collaboration-with-mercurial)
    - [Mercurial Clients](#mercurial-clients)
    - [What Mercurial and Git Have in Common](#what-mercurial-and-git-have-in-common)
    - [What Is the Difference Between Git and Mercurial (and Which Is Better)?](#what-is-the-difference-between-git-and-mercurial-and-which-is-better)
  - [Hosting Platforms for Version Control](#hosting-platforms-for-version-control)
    - [Introduction to Hosting Platforms](#introduction-to-hosting-platforms)
    - [Quick Comparison: GitHub vs. GitLab vs. Codeberg](#quick-comparison-github-vs-gitlab-vs-codeberg)
    - [GitHub](#github)
      - [Introduction to GitHub](#introduction-to-github)
      - [Creating a GitHub Account](#creating-a-github-account)
      - [Creating and Managing Repositories](#creating-and-managing-repositories-github)
      - [Collaborating on GitHub](#collaborating-on-github)
      - [GitHub Features](#github-features)
    - [GitLab](#gitlab)
      - [Introduction to GitLab](#introduction-to-gitlab)
      - [Creating a GitLab Account](#creating-a-gitlab-account)
      - [Creating and Managing Repositories](#creating-and-managing-repositories-gitlab)
      - [Collaborating on GitLab](#collaborating-on-gitlab)
      - [GitLab Features](#gitlab-features)
    - [Codeberg](#codeberg)
      - [Introduction to Codeberg](#introduction-to-codeberg)
      - [Creating a Codeberg Account](#creating-a-codeberg-account)
      - [Creating and Managing Repositories](#creating-and-managing-repositories-codeberg)
      - [Collaborating on Codeberg](#collaborating-on-codeberg)
      - [Codeberg Features](#codeberg-features)

## Introduction

Welcome to this tutorial on Version Control Systems (VCS)! Whether you're a beginner in programming or an experienced developer looking to improve your workflow, understanding and using version control is essential. Version control systems help manage changes to source code over time, enabling collaboration, tracking history, and facilitating the development process.

In this tutorial, we will explore the fundamentals of version control, its purposes, and benefits. We will also delve into different types of version control systems, with a focus on Git and Mercurial. Additionally, we will cover popular hosting platforms for version control, including GitHub, GitLab, and Codeberg, providing a comparision to help you choose the right platform for your needs.

By the end of this tutorial, you will have a solid understanding of the basics how version control systems work, what is Git and Mercurial , and how to leverage hosting platforms to collaborate with others and manage your projects efficiently.

Let's get started!


<br>

## Prerequisites

Before diving into this tutorial, it's helpful to have a basic understanding of the following concepts and tools:

1. **Basic Programming Knowledge**:
   - Familiarity with at least one programming language (e.g., Python, JavaScript, etc.).
   - Understanding of basic programming concepts such as variables, functions, and loops.

2. **Command Line Interface (CLI)**:
   - Basic knowledge of how to navigate and perform operations using the command line (e.g., terminal on macOS/Linux, Command Prompt or PowerShell on Windows).
   - Common commands like `cd`, `ls` (or `dir` on Windows), `mkdir`, and `rm` (or `del` on Windows).

3. **Text Editor or IDE**:
   - A text editor or Integrated Development Environment (IDE) for writing and editing code. Popular choices include Visual Studio Code, Sublime Text, Atom, or any other editor you are comfortable with.

4. **Internet Connection**:
   - Access to the internet to download necessary software, create accounts on hosting platforms, and follow along with examples and exercises.

5. **Basic Understanding of Software Development**:
   - Familiarity with the software development lifecycle, including concepts like coding, testing, and deployment.

While these prerequisites are not strictly required, having a basic understanding of them will greatly enhance your learning experience and help you get the most out of this tutorial. If you are new to any of these areas, consider spending some time familiarizing yourself with them before proceeding.

Now that you have an idea of what you need, let's move on to understanding the purpose of version control systems.

<br>

## Purpose of Version Control

Version Control Systems (VCS) serve several critical purposes in software development and project management. Understanding these purposes will help you appreciate the value and importance of using version control in your workflow.

1. **Tracking Changes**
One of the primary purposes of a VCS is to track changes made to files over time. This includes:
- **Version History**: Keeping a record of every change made to a file, including who made the change, when it was made, and why.
- **Diffing**: Comparing different versions of a file to see what changes were made.

2. **Collaboration**
Version control systems facilitate collaboration among team members by allowing multiple people to work on the same project simultaneously without overwriting each other's changes. Key features include:
- **Branching**: Creating separate lines of development to work on new features or bug fixes without affecting the main codebase.
- **Merging**: Integrating changes from different branches back into the main codebase.
- **Conflict Resolution**: Identifying and resolving conflicts that arise when multiple people make changes to the same part of a file.

3. **Backup and Restore**
A VCS provides a robust backup mechanism by storing the entire history of a project. This means you can:
- **Revert Changes**: Easily revert to a previous version of a file if something goes wrong.
- **Recover Lost Work**: Retrieve lost or deleted files from the version history.

4. **Code Review and Quality Assurance**
Version control systems enable better code review processes, which are essential for maintaining code quality. Features include:
- **Pull Requests/Merge Requests**: Allowing team members to review and approve changes before they are merged into the main codebase.
- **Issue Tracking**: Integrating with issue tracking systems to link code changes to specific bugs or feature requests.

5. **Release Management**
VCS helps in managing different versions of software releases by:
- **Tagging**: Marking specific points in the project history as important milestones or releases.
- **Branching Strategies**: Using different branches for development, testing, and production to manage the release cycle effectively.

6. **Documentation and Auditing**
A VCS provides a comprehensive record of all changes made to a project, which is useful for:
- **Documentation**: Keeping detailed logs of changes, including commit messages that explain the purpose of each change.
- **Auditing**: Tracking who made what changes and when, which is crucial for compliance and accountability.

In summary, version control systems are indispensable tools for managing and collaborating on software projects. They provide a structured way to track changes, facilitate teamwork, ensure code quality, and manage releases. By using a VCS, you can streamline your development process, reduce errors, and improve the overall quality of your projects.

Next, let's explore the benefits of using version control systems.

<br>

## Benefits of Version Control

Using a Version Control System (VCS) offers numerous benefits that can significantly enhance your development workflow and project management. Here are some of the key advantages:

1. **Enhanced Collaboration**
- **Simultaneous Work**: Multiple team members can work on the same project simultaneously without overwriting each other's changes.
- **Branching and Merging**: Developers can create branches to work on new features or bug fixes independently and merge them back into the main codebase when ready.
- **Pull/Merge Requests**: Facilitate code reviews and discussions before integrating changes, ensuring higher code quality and team cohesion.

2. **History Tracking**
- **Change Logs**: Keep a detailed history of all changes made to the project, including who made the change, when, and why.
- **Version Comparison**: Easily compare different versions of files to understand what changes were made over time.
- **Blame/Annotate**: Identify who made specific changes to a file, which is useful for debugging and understanding the evolution of the codebase.

3. **Backup and Recovery**
- **Automatic Backups**: Every commit is a snapshot of the project at a specific point in time, providing a built-in backup system.
- **Revert Changes**: Quickly revert to a previous version if a change introduces bugs or issues.
- **Disaster Recovery**: Recover lost or deleted files from the version history, ensuring that no work is permanently lost.

4. **Improved Code Quality**
- **Code Reviews**: Integrate code review processes to ensure that changes are reviewed and approved by team members before merging.
- **Issue Tracking**: Link code changes to specific issues or feature requests, making it easier to track progress and resolve problems.
- **Continuous Integration (CI)**: Automate testing and deployment processes to catch errors early and maintain high code quality.

5. **Release Management**
- **Version Tagging**: Mark specific points in the project history as important milestones or releases, making it easy to track and manage different versions.
- **Branching Strategies**: Use different branches for development, testing, and production to manage the release cycle effectively.
- **Rollback**: Quickly roll back to a previous release if issues are discovered after deployment.

6. **Documentation and Auditing**
- **Commit Messages**: Document the purpose of each change with detailed commit messages, providing a clear record of the project's evolution.
- **Audit Trails**: Track who made what changes and when, which is crucial for compliance, accountability, and security audits.
- **Changelogs**: Generate changelogs automatically from commit messages to keep stakeholders informed about project updates.

7. **Flexibility and Scalability**
- **Distributed Work**: Distributed version control systems (DVCS) like Git allow developers to work offline and synchronize changes later, providing flexibility for remote and distributed teams.
- **Scalability**: VCS can handle projects of any size, from small personal projects to large enterprise-scale applications.
- **Integration**: Seamlessly integrate with other tools and platforms, such as continuous integration/continuous deployment (CI/CD) pipelines, project management tools, and issue trackers.

8. **Conflict Resolution**
- **Merge Conflicts**: Automatically detect and resolve conflicts that arise when multiple people make changes to the same part of a file.
- **Conflict Markers**: Provide clear indicators of conflicts, allowing developers to manually resolve them if necessary.
- **Three-Way Merge**: Use advanced merging techniques to combine changes from multiple branches, minimizing the risk of conflicts.

In summary, version control systems offer a wide range of benefits that can greatly improve your development workflow, enhance collaboration, ensure code quality, and streamline project management. By adopting a VCS, you can work more efficiently, reduce errors, and deliver better software products.

Next, let's explore the different types of version control systems.

<br>

## Types of Version Control Systems

Version Control Systems (VCS) can be broadly categorized into two main types: Centralized Version Control Systems (CVCS) and Distributed Version Control Systems (DVCS). Each type has its own characteristics, advantages, and use cases. Understanding these types will help you choose the right VCS for your needs.

### Centralized Version Control Systems (CVCS)

Centralized Version Control Systems rely on a single central server to store the project's history and manage version control. All developers interact with this central server to check out files, make changes, and commit their work.

#### Key Features:
- **Single Repository**: All version history and project data are stored in a central server.
- **Centralized Control**: The central server manages access permissions and controls who can make changes to the project.
- **Locking Mechanism**: Some CVCS use a locking mechanism to prevent multiple developers from editing the same file simultaneously, reducing the risk of conflicts.

#### Advantages:
- **Simplicity**: Easy to set up and manage, especially for small teams.
- **Centralized Backup**: All project data is backed up on the central server, reducing the risk of data loss.
- **Access Control**: Fine-grained control over who can access and modify the project.

#### Disadvantages:
- **Single Point of Failure**: If the central server goes down, developers cannot access the project history or commit changes.
- **Network Dependency**: Requires a constant network connection to interact with the central server.
- **Scalability Issues**: Can become a bottleneck for large teams or projects with frequent commits.

#### Examples:
- **Subversion (SVN)**: One of the most popular CVCS, known for its simplicity and robustness.
- **CVS (Concurrent Versions System)**: An older CVCS that is less commonly used today.

### Distributed Version Control Systems (DVCS)

Distributed Version Control Systems allow each developer to have a complete copy of the project's history on their local machine. Changes are synchronized between developers through a process of pushing and pulling changes.

#### Key Features:
- **Local Repositories**: Each developer has a full copy of the project's history on their local machine.
- **Decentralized Control**: No single point of control; developers can work independently and synchronize changes as needed.
- **Branching and Merging**: Advanced branching and merging capabilities to manage complex workflows.

#### Advantages:
- **Offline Work**: Developers can work offline and commit changes locally, synchronizing with the remote repository later.
- **Redundancy**: Each local repository acts as a backup, reducing the risk of data loss.
- **Flexibility**: Supports a wide range of workflows and collaboration models.

#### Disadvantages:
- **Complexity**: More complex to set up and manage, especially for beginners.
- **Storage Requirements**: Requires more disk space to store the full project history on each developer's machine.
- **Learning Curve**: Steeper learning curve compared to CVCS.

#### Examples:
- **Git**: The most widely used DVCS, known for its speed, flexibility, and powerful features.
- **Mercurial**: Another popular DVCS that offers a user-friendly interface and strong performance.

### Comparison: CVCS vs. DVCS

| Feature                | CVCS                                 | DVCS                                 |
|------------------------|---------------------------------------|---------------------------------------|
| **Repository Location**| Central server                       | Local and remote repositories        |
| **Backup**             | Centralized backup                   | Distributed backup                   |
| **Network Dependency** | Requires constant network connection | Can work offline                     |
| **Branching and Merging**| Limited branching and merging capabilities| Advanced branching and merging capabilities|
| **Access Control**     | Centralized access control           | Decentralized access control          |
| **Scalability**        | Can become a bottleneck for large teams| Highly scalable for large teams      |
| **Examples**           | Subversion (SVN), CVS                | Git, Mercurial                        |

In summary, the choice between a CVCS and a DVCS depends on your project's requirements, team size, and workflow preferences. Centralized systems are simpler and easier to manage for small teams, while distributed systems offer more flexibility and scalability for larger, more complex projects.

In today's collaborative software development landscape, DVCS have emerged as the preferred and obvious choice due to their decentralized nature, efficient handling of large repositories, and robust support for parallel development.

Next, let's dive deeper into Git, one of the most popular DVCS.


<br>

## Git

### Introduction to Git

Git is a distributed version control system (DVCS) that is widely used in the software development community. Created by Linus Torvalds in 2005, Git is known for its speed, flexibility, and powerful features. It allows developers to work collaboratively on projects, track changes, and manage different versions of code efficiently.

While Git is known for its steep learning curve, it has nonetheless become the globally dominant Distributed Version Control System.

### Basic Git Commands

Here are some basic Git commands to get you started:

- **git init**: Initialize a new Git repository.
- **git clone**: Clone an existing repository.
- **git add**: Stage changes for the next commit.
- **git commit**: Commit staged changes to the repository.
- **git status**: Show the working directory status.
- **git log**: Show commit logs.
- **git branch**: List, create, or delete branches.
- **git checkout**: Switch branches or restore working tree files.
- **git merge**: Merge changes from one branch into another.
- **git pull**: Fetch from and integrate with another repository or a local branch.
- **git push**: Update remote refs along with associated objects.

### Git Workflow

The typical Git workflow involves several key steps:

1. **Initialize or Clone a Repository**: Start by initializing a new repository or cloning an existing one.
2. **Make Changes**: Modify files in your working directory.
3. **Stage Changes**: Use `git add` to stage changes for the next commit.
4. **Commit Changes**: Use `git commit` to commit staged changes to the repository.
5. **Push Changes**: Use `git push` to push your changes to a remote repository.
6. **Pull Changes**: Use `git pull` to fetch and integrate changes from a remote repository.

Here's a visual representation of the Git workflow:

<img src="https://media.dev.to/cdn-cgi/image/width=800%2Cheight=%2Cfit=scale-down%2Cgravity=auto%2Cformat=auto/https%3A%2F%2Fdev-to-uploads.s3.amazonaws.com%2Fuploads%2Farticles%2Fvpxeexqyfvf4hw3zxtbn.png" alt="drawing" width="400"/>

### Branching and Merging

Branching and merging are powerful features of Git that allow developers to work on different features or bug fixes independently and integrate changes later.

- **Branching**: Create a new branch to work on a specific feature or bug fix.

```bash
git branch feature-branch
git checkout feature-branch
```

- **Merging**: Integrate changes from one branch into another.

```bash
git checkout main
git merge feature-branch
```

Here's a visual representation of branching and merging:

<img src="https://wac-cdn.atlassian.com/dam/jcr:c6db91c1-1343-4d45-8c93-bdba910b9506/02%20Branch-1%20kopiera.png?cdnVersion=2072" alt="drawing" width="400"/>

### Collaboration with Git

Git facilitates collaboration among team members through features like pull requests, issues, and discussions. Here's how you can collaborate using Git:

1. **Fork a Repository**: Create a personal copy of someone else's repository.
2. **Clone the Fork**: Clone your forked repository to your local machine.
3. **Create a Branch**: Create a new branch for your changes.
4. **Make Changes**: Modify files and commit your changes.
5. **Push Changes**: Push your changes to your forked repository.
6. **Create a Pull Request**: Submit a pull request to the original repository to propose your changes.
7. **Review and Merge**: The repository owner reviews your changes and merges them if approved.

### Git Clients

While Git can be used entirely from the command line, there are several graphical user interface (GUI) clients available that can make working with Git more intuitive and user-friendly. Here are some popular Git clients:

- **[GitHub Desktop](https://desktop.github.com/)**: A free and open-source Git client developed by GitHub. It provides a simple and intuitive interface for managing repositories, committing changes, and collaborating with others.

- **[Sourcetree](https://www.sourcetreeapp.com/)**: A free Git client developed by Atlassian, the company behind Bitbucket. Sourcetree offers a rich feature set and supports both Git and Mercurial repositories.

- **[GitKraken](https://www.gitkraken.com/)**: A powerful and feature-rich Git client that offers a modern and sleek interface. GitKraken supports advanced features like GitFlow, pull requests, and issue tracking.

- **[Tower](https://www.git-tower.com/)**: A premium Git client that focuses on ease of use and productivity. Tower offers a clean and intuitive interface, making it a popular choice among professional developers.

- **[GitButler](https://gitbutler.com/)**: A lightweight and straightforward Git client designed for simplicity and ease of use. GitButler provides a clean interface for managing repositories, committing changes, and viewing commit history.

Using a Git client can simplify many common tasks, such as visualizing the commit history, managing branches, and resolving merge conflicts. These tools can be especially helpful for beginners or for those who prefer a visual interface over the command line.

### Git Tutorials

- [Install Git](https://www.atlassian.com/git/tutorials/install-git)
- [Setting up a repository](https://www.atlassian.com/git/tutorials/setting-up-a-repository)
- [Saving Changes](https://www.atlassian.com/git/tutorials/saving-changes)
- [Undoing Commits & Changes](https://www.atlassian.com/git/tutorials/undoing-changes)
- [Collaboration: Syncing](https://www.atlassian.com/git/tutorials/syncing)
- [Collaboration: Branches](https://www.atlassian.com/git/tutorials/using-branches)
- [Collaboration: Pull Request](https://www.atlassian.com/git/tutorials/making-a-pull-request)
- [Git CheatSheet](https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet)



<br>

## Mercurial

### Introduction to Mercurial

Mercurial is another popular distributed version control system (DVCS) that is known for its simplicity and ease of use. Developed by Matt Mackall in 2005, Mercurial shares many similarities with Git but has a different design philosophy and user experience. Mercurial is used by many large organizations and open-source projects, including Mozilla and the Python Software Foundation.

### Basic Mercurial Commands

Here are some basic Mercurial commands to get you started:

- **hg init**: Initialize a new Mercurial repository.
- **hg clone**: Clone an existing repository.
- **hg add**: Add new files to the repository.
- **hg commit**: Commit changes to the repository.
- **hg status**: Show the status of the working directory.
- **hg log**: Show the commit history.
- **hg branch**: List, create, or delete branches.
- **hg update**: Update the working directory to a specific revision.
- **hg merge**: Merge changes from one branch into another.
- **hg pull**: Pull changes from a remote repository.
- **hg push**: Push changes to a remote repository.

### Mercurial Workflow

The typical Mercurial workflow involves several key steps:

1. **Initialize or Clone a Repository**: Start by initializing a new repository or cloning an existing one.
2. **Make Changes**: Modify files in your working directory.
3. **Add New Files**: Use `hg add` to add new files to the repository.
4. **Commit Changes**: Use `hg commit` to commit changes to the repository.
5. **Push Changes**: Use `hg push` to push your changes to a remote repository.
6. **Pull Changes**: Use `hg pull` to fetch and integrate changes from a remote repository.


### Branching and Merging

Mercurial supports branching and merging, allowing developers to work on different features or bug fixes independently and integrate changes later.

- **Branching**: Create a new branch to work on a specific feature or bug fix.

```bash
hg branch feature-branch
hg commit -m "Created feature branch"
```

- **Merging**: Integrate changes from one branch into another.

```bash
hg update main
hg merge feature-branch
hg commit -m "Merged feature branch into main"
```

### Collaboration with Mercurial

Mercurial facilitates collaboration among team members through features like pull requests, issues, and discussions. Here's how you can collaborate using Mercurial:

Fork a Repository: Create a personal copy of someone else's repository.
Clone the Fork: Clone your forked repository to your local machine.
Create a Branch: Create a new branch for your changes.
Make Changes: Modify files and commit your changes.
Push Changes: Push your changes to your forked repository.
Create a Pull Request: Submit a pull request to the original repository to propose your changes.
Review and Merge: The repository owner reviews your changes and merges them if approved.

### Mercurial Clients

While Mercurial can be used entirely from the command line, there are several graphical user interface (GUI) clients available that can make working with Mercurial more intuitive and user-friendly. Here are some popular Mercurial clients:

- **[TortoiseHg](https://tortoisehg.bitbucket.io/)**: A popular and feature-rich Mercurial client that integrates with Windows Explorer. TortoiseHg provides a comprehensive set of tools for managing repositories, committing changes, and visualizing the commit history.

- **[SourceTree](https://www.sourcetreeapp.com/)**: Developed by Atlassian, SourceTree supports both Git and Mercurial repositories. It offers a rich feature set and a user-friendly interface, making it a popular choice for managing Mercurial repositories.

- **[SmartGit](https://www.syntevo.com/smartgit/)**: A powerful and versatile client that supports both Git and Mercurial. SmartGit offers advanced features and a clean interface, making it suitable for both beginners and experienced users.

- **[RabbitVCS](https://rabbitvcs.org/)**: A set of graphical tools written to provide simple and straightforward access to version control systems. RabbitVCS supports both Git and Mercurial and integrates with various file managers.

Using a Mercurial client can simplify many common tasks, such as visualizing the commit history, managing branches, and resolving merge conflicts. These tools can be especially helpful for beginners or for those who prefer a visual interface over the command line.

### Mercurial Tutorials

- [Ground Up Mercurial](https://hginit.github.io/01.html)
- 

Mercurial is a powerful and user-friendly distributed version control system that is well-suited for both small and large projects. By understanding and using Mercurial effectively, you can streamline your development workflow, enhance collaboration, and manage your projects more efficiently.

<br>

## Mercurial Vs Git

### What Is the Difference Between Git and Mercurial (and Which Is Better)?

The biggest difference between Mercurial and Git is the branching structure. It can be argued that branching is better in Git than in Mercurial. Even though Mercurial may be easier to learn and use, its branching model often creates confusion.

Here's a breakdown of all of the key differences between Git and Mercurial.

1. **Usability**: Is Git or Mercurial Easier to Use?

When comparing Git vs. Mercurial, one of the biggest differences is the level of expertise needed to use each system.

**Git Is More Complex, With More Commands**

Git is more complex, and it requires your team to know it inside and out before using it safely and effectively. With Git, one sloppy developer can cause major damage for the whole team. Its documentation is also harder to understand.

In general, if your team is less experienced, or if you have non-technical people on your team, Mercurial might be the better solution.

If you opt for Git, consider choosing an intuitive GUI to accompany it. Using Git on the command-line can cause nightmares, especially in the beginning. The commands in Git are long and come with multiple options, which increases the difficulty.

**Mercurial Is Simpler**

Mercurial’s syntax is simpler, and the documentation is easier to understand. Furthermore, it works the way a tool should — you don’t think about it while using it. Conversely, with Git, you might end up spending time figuring out finicky behavior and pouring over forums for help.

Once you get over the learning curve, Git offers teams more flexibility.

2. **Security**: Is Git or Mercurial More Secure?

It seems strange, but you could argue that Git and Mercurial are each more secure than the other, and you wouldn't be contradicting yourself. Which is to say, neither of them offers the security most teams need.

**Git Is Better for Experienced Users**

Security in Git vs. Mercurial depends on your level of technical expertise. Mercurial may be safer for less experienced users, but Git can offer ways to enhance safety (once you know what you are doing).

Neither VCS offers the security that prevents people from accidentally or intentionally compromising code. In short, neither offers the robust security that most teams need.

**Mercurial Is Safer For Less Experienced Users**

By default, Mercurial doesn’t allow you to change history. However, Git allows all involved developers to change the version history. Obviously, this can have disastrous consequences. With basic Mercurial, you can only change your last commit with “hg commit – amend”.

Git also stores every change made for 30 days in reflog. For example, you can modify the commit message of the latest commit, and revert it for 30 days. However, the changes can only be made locally, as these changes are not pushed to the remote repository by default. After 30 days, the changes are collected, meaning you can no longer revert.

3. **Branching**: Is Mercurial vs. Git Better?

Branching means working with files — source code — that you want to modify. Branches allow you to work on different versions of your code at the same time. Then developers can merge the changes, without (hopefully) breaking the code base.

**Git’s Branching Model Is More Effective**

One of the main reasons developers swear by Git is its effective branching model. In Git, branches are only references to a certain commit. This makes them lightweight yet powerful.

Git allows you to create, delete, and change a branch anytime, without affecting the commits. If you need to test a new feature or find a bug — make a branch, do the changes, and then delete the branch.

Git supports the idea of a staging area, which is also known as the index file.

Staging is the practice of adding files for your next commit. It allows you to choose which files to commit next. This is useful when you don't want to commit all changed files together.

**Mercurial’s Branching Model Can Cause Confusion**

Branching in Mercurial doesn't share the same meaning. This can make it more cumbersome. In Mercurial, branches refer to a linear line of consecutive changesets. Changesets (csets) refer to a complete set of changes made to a file in a repository.

Mercurial embeds the branches in the commits, where they are stored forever. This means that branches cannot be removed because that would alter the history. However, you can refer to certain commits with bookmarks, and use them in a similar manner to Git’s branches.

Lastly, it requires you take added care not to push code to the wrong branch, especially if you haven’t clearly named them. You can easily avoid this in Git.

In Mercurial, there is no index or staging area before the commit. Changes are committed as they are in the working directory. This might be an adequate and simple solution for many people. But if you want the option to choose which parts of the working directory you commit, you can use a Mercurial extension, such as DirState or Mercurial Queues.

### Git vs. Mercurial : Which Should You Choose?

Fundamentally, Git and Mercurial are similar, and each has its merits as a VCS. They were just designed differently and require different levels of expertise.

Git has become an industry standard, which means more developers are familiar with it. Mercurial's big advantage is that it’s easy to learn and use, which is useful for less-technical content contributors.

In the Git vs. Mercurial debate, Git is the clear choice for pure web and mobile-application development. But if you have mixed assets, large global teams, or stringent security requirements, you may want to consider another alternative.

<br>

## Hosting Platforms for Version Control

Hosting platforms for version control systems provide a centralized location for storing, managing, and collaborating on repositories. These platforms offer a range of features that enhance the development workflow, including issue tracking, code reviews, continuous integration, and more. In this section, we will explore three popular hosting platforms: GitHub, GitLab, and Codeberg.

### Quick Comparison: GitHub vs. GitLab vs. Codeberg

| Feature                  | GitHub                                  | GitLab                                  | Codeberg                                |
|--------------------------|------------------------------------------|------------------------------------------|------------------------------------------|
| **Open Source**          | Yes, but with limitations               | Yes, fully open source                  | Yes, fully open source                  |
| **Pricing**              | Free and paid plans                     | Free and paid plans                     | Free and paid plans                     |
| **CI/CD**                | GitHub Actions                          | GitLab CI/CD                            | Not natively supported                  |
| **Collaboration**        | Pull requests, issues, discussions      | Merge requests, issues, discussions     | Pull requests, issues                   |
| **Integration**          | Extensive third-party integrations      | Extensive third-party integrations      | Limited third-party integrations        |
| **Community**            | Large and active                        | Large and active                        | Smaller but growing                     |
| **Self-hosting**         | GitHub Enterprise                       | GitLab Self-Managed                     | Codeberg Self-Hosted                    |
| **Unique Features**      | GitHub Pages, GitHub Copilot             | GitLab Pages, GitLab Runner             | Focus on privacy and ethical standards  |

This comparison provides a high-level overview of the key features and differences between GitHub, GitLab, and Codeberg. Each platform has its own strengths and may be more suitable for different types of projects and teams.

<br>

### GitHub

#### Introduction to GitHub

GitHub is one of the most popular and widely used hosting platforms for Git repositories. Launched in 2008, GitHub has become a hub for open-source projects and collaborative development. It offers a user-friendly interface, robust features, and a large community of developers.

#### Creating a GitHub Account

To get started with GitHub, you need to create an account:

1. Visit the [GitHub website](https://github.com/).
2. Click on "Sign up" and follow the prompts to create your account.

#### Creating and Managing Repositories

Once you have a GitHub account, you can create and manage repositories:

1. Click on the "+" icon in the upper right corner and select "New repository."
2. Fill in the repository name, description, and choose whether it should be public or private.
3. Click on "Create repository."

You can then clone the repository to your local machine, make changes, and push them back to GitHub.

#### Collaborating on GitHub

GitHub offers several features to facilitate collaboration:

- **Pull Requests**: Submit changes for review and integration into the main codebase.
- **Issues**: Track bugs, feature requests, and other tasks.
- **Discussions**: Engage in conversations with your team or community.
- **Actions**: Automate workflows, including continuous integration and deployment.

#### GitHub Features

- **GitHub Pages**: Host static websites directly from your GitHub repositories.
- **GitHub Copilot**: An AI-powered coding assistant that helps you write code.
- **GitHub Marketplace**: Access a variety of tools and integrations to enhance your workflow.

#### GitHub tutorials

- [An Intro to Git and GitHub for Beginners](https://product.hubspot.com/blog/git-and-github-tutorial-for-beginners)
- [Learn GitHub's pull request workflow](https://docs.github.com/en/get-started/start-your-journey/hello-world)
- [How to create your first repo](https://github.blog/developer-skills/github/beginners-guide-to-github-repositories-how-to-create-your-first-repo/)
- [Uploading files and folders to GitHub](https://github.blog/developer-skills/github/beginners-guide-to-github-uploading-files-and-folders-to-github/)
- [Git and GitHub learning resources](https://docs.github.com/en/get-started/start-your-journey/git-and-github-learning-resources)

<br>

### GitLab

#### Introduction to GitLab

GitLab is another popular hosting platform that supports both Git and Mercurial repositories. It offers a comprehensive set of features for managing the entire software development lifecycle, from planning and coding to testing and deployment.

#### Creating a GitLab Account

To get started with GitLab, you need to create an account:

1. Visit the [GitLab website](https://gitlab.com/).
2. Click on "Register" and follow the prompts to create your account.

#### Creating and Managing Repositories

Once you have a GitLab account, you can create and manage repositories:

1. Click on the "New project" button on the dashboard.
2. Fill in the project name, description, and choose whether it should be public or private.
3. Click on "Create project."

You can then clone the repository to your local machine, make changes, and push them back to GitLab.

#### Collaborating on GitLab

GitLab offers several features to facilitate collaboration:

- **Merge Requests**: Submit changes for review and integration into the main codebase.
- **Issues**: Track bugs, feature requests, and other tasks.
- **Boards**: Visualize and manage your workflow with Kanban boards.
- **CI/CD**: Automate testing, building, and deployment with GitLab CI/CD.

#### GitLab Features

- **GitLab Pages**: Host static websites directly from your GitLab repositories.
- **GitLab Runner**: Execute CI/CD jobs on your own infrastructure.
- **GitLab Marketplace**: Access a variety of tools and integrations to enhance your workflow.

#### Gitlab tutorials

- [Gitlab Tutorial from tutorialsPoint](https://www.tutorialspoint.com/gitlab/index.htm)
- [How To Use the GitLab User Interface To Manage Projects](https://www.digitalocean.com/community/tutorials/how-to-use-the-gitlab-user-interface-to-manage-projects)
- [Learn GitLab with tutorials](https://docs.gitlab.com/ee/tutorials/)

<br>

### Codeberg

#### Introduction to Codeberg

Codeberg is a newer hosting platform that focuses on privacy, ethical standards, and open-source values. It is designed to be a community-driven alternative to other hosting platforms, offering a range of features for managing Git repositories.

#### Creating a Codeberg Account

To get started with Codeberg, you need to create an account:

1. Visit the [Codeberg website](https://codeberg.org/).
2. Click on "Sign up" and follow the prompts to create your account.

#### Creating and Managing Repositories

Once you have a Codeberg account, you can create and manage repositories:

1. Click on the "New repository" button on the dashboard.
2. Fill in the repository name, description, and choose whether it should be public or private.
3. Click on "Create repository."

You can then clone the repository to your local machine, make changes, and push them back to Codeberg.

#### Collaborating on Codeberg

Codeberg offers several features to facilitate collaboration:

- **Pull Requests**: Submit changes for review and integration into the main codebase.
- **Issues**: Track bugs, feature requests, and other tasks.
- **Discussions**: Engage in conversations with your team or community.
- **CI/CD**: Automate testing, building, and deployment with Codeberg CI/CD.

#### Codeberg Features

- **Privacy and Ethical Standards**: Codeberg is committed to protecting user privacy and promoting ethical standards in software development.
- **Community-Driven**: Codeberg is designed to be a community-driven platform, with a focus on open-source values.
- **Integrations**: Access a variety of tools and integrations to enhance your workflow.

#### Codeberg tutorials

- [Getting Started with Codeberg](https://docs.codeberg.org/getting-started/)

<br>

