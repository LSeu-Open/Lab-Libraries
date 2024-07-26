# Basic Understanding of the Command Line

🟩 **Begginer** (No prior experience required)

## Table of Contents

# Table of Contents

+ [Introduction to Command Line Interface (CLI)](#introduction-to-command-line-interface-cli)
    - [What Is Command Line Interface/CLI?](#what-is-command-line-interfacecli)
    - [What Does the Command Line Look Like?](#what-does-the-command-line-look-like)
    - [Why Should I Learn the Command Line?](#why-should-i-learn-the-command-line)

+ [CLI vs. GUI: Key Differences](#cli-vs-gui-key-differences)

+ [Understanding Different Types of CLIs](#understanding-different-types-of-clis)
    - [Shell vs. Bash vs. Terminal vs. Command Prompt](#shell-vs-bash-vs-terminal-vs-command-prompt)
        - [What is a Shell?](#what-is-a-shell)
        - [What is Bash?](#what-is-bash)
        - [What is a Terminal?](#what-is-a-terminal)
        - [What is Command Prompt?](#what-is-command-prompt)
    - [Comparing Common CLIs](#comparing-common-clis)
        - [Unix-based Shells](#unix-based-shells)
            - [Bash (Bourne Again SHell)](#bash-bourne-again-shell)
            - [Zsh (Z Shell)](#zsh-z-shell)
            - [Fish (Friendly Interactive SHell)](#fish-friendly-interactive-shell)
        - [Windows-based CLIs](#windows-based-clis)
            - [Command Prompt](#command-prompt)
            - [PowerShell](#powershell)
        - [Console Emulators](#console-emulators)
            - [Key Features of Console Emulators](#key-features-of-console-emulators)
            - [Cmder](#cmder)
            - [Terminus](#terminus)
            - [iTerm2](#iterm2)
    - [Choosing the Right CLI](#choosing-the-right-cli)
        - [Factors to Consider](#factors-to-consider)
        - [Recommendations for Different Use Cases](#recommendations-for-different-use-cases)

+ [Learn the Command Line](#learn-the-command-line)
    - [Navigating the File System](#navigating-the-file-system)
    - [Viewing and Changing the File System](#viewing-and-changing-the-file-system)
    - [Redirecting Input and Output](#redirecting-input-and-output)
    - [Configuring the Environment](#configuring-the-environment)
    - [Working with Files and Directories](#working-with-files-and-directories)
    - [Managing Processes](#managing-processes)
    - [Networking Commands](#networking-commands)
    - [Package Management](#package-management)

+ [Basic Commands Recapitulation](#basic-commands-recapitulation)


 
<br>

## Introduction to Command Line Interface (CLI)

## What Is Command Line Interface/CLI?

The Command Line Interface (CLI) is a text-based interface that allows users to interact with a computer's operating system by typing commands. Unlike graphical user interfaces (GUIs), which use windows, icons, and menus, the CLI relies on text input and output. This makes it a powerful tool for performing tasks quickly and efficiently, especially for advanced users and developers.

## What Does the Command Line Look Like?

The command line typically appears as a simple text prompt where you can type commands. Here's an example of what the command line might look like on different operating systems:

- **Linux/macOS (Bash):** `user@hostname:~$`

![Bash](https://imgs.search.brave.com/yP9RcQoDTDSgYIPNxyWzxpSB53sfHIPfIcS-Dimsc4E/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMxLm1ha2V1c2Vv/ZmltYWdlcy5jb20v/d29yZHByZXNzL3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDIzLzEw/L3Jpby10ZXJtaW5h/bC1hcHAtZm9yLW1h/Yy0xLmpwZw)

- **Windows (Command Prompt):** `C:\Users\username>`

![CommandPrompt](https://imgs.search.brave.com/rkhN5EYBXAK7on-wvYCxCk4Ig2ES3afbaqVdVM5aS7o/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMxLnhkYWltYWdl/cy5jb20vd29yZHBy/ZXNzL3dwLWNvbnRl/bnQvdXBsb2Fkcy93/bS8yMDIzLzA5L2hl/bHAtY29tbWFuZC13/aW5kb3dzLnBuZw)

- **Windows (PowerShell):** `PS C:\Users\username>`

![Powershell](https://imgs.search.brave.com/xJZGK7NHHR1NAnv6z4_JNA5mV_E5NwedSkL_c7sqYV4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbmZv/LnZhcm9uaXMuY29t/L2hzLWZzL2h1YmZz/L0ltcG9ydGVkX0Js/b2dfTWVkaWEvcG93/ZXJzaGVsbF9zY3Jp/cHRpbmdfcG9zdF9p/bWFnZV83LnBuZz93/aWR0aD0yMDAxJmhl/aWdodD0xNDQ3Jm5h/bWU9cG93ZXJzaGVs/bF9zY3JpcHRpbmdf/cG9zdF9pbWFnZV83/LnBuZw)

The prompt usually includes information about the current user and the directory you are in. After the prompt, you can type commands followed by the Enter key to execute them.

## Why Should I Learn the Command Line?

Learning the command line offers several benefits:

1. **Efficiency:** The CLI allows you to perform tasks much faster than using a GUI. You can execute multiple commands in sequence, automate repetitive tasks, and manage files and directories with ease.

2. **Power and Flexibility:** The CLI provides access to powerful tools and utilities that are not available in GUIs. You can customize your environment, manage system resources, and perform complex operations with a few keystrokes.

3. **Scripting and Automation:** The CLI is essential for scripting and automating tasks. You can write scripts to automate repetitive tasks, manage configurations, and deploy applications.

4. **Remote Access:** The CLI is crucial for remote access and administration. Tools like SSH allow you to connect to and manage remote servers and devices from the command line.

5. **Professional Development:** Knowledge of the command line is highly valued in many technical fields, including software development, system administration, and data science. Mastering the CLI can open up new career opportunities and make you a more versatile professional.

By learning the command line, you gain a deeper understanding of how your computer operates and become more proficient in using it to its full potential.

<br>

# CLI vs. GUI: Key Differences

The Command Line Interface (CLI) and Graphical User Interface (GUI) are two primary ways to interact with a computer. Each has its own strengths and weaknesses, and understanding the differences between them can help you decide when to use one over the other.

## Key Differences

### 1. Interaction Method

- **CLI:**
  - **Text-based:** Users interact with the system by typing commands.
  - **Command-driven:** Commands are entered via a keyboard, and the system responds with text output.

- **GUI:**
  - **Graphical:** Users interact with the system using visual elements like windows, icons, menus, and pointers.
  - **Mouse-driven:** Actions are performed using a mouse or touchpad to click on icons and menus.

### 2. Ease of Use

- **CLI:**
  - **Steep learning curve:** Requires knowledge of specific commands and syntax.
  - **Less intuitive:** Not immediately obvious how to perform tasks without prior knowledge.

- **GUI:**
  - **User-friendly:** Intuitive and easy to learn, especially for beginners.
  - **Visual cues:** Icons and menus provide visual cues for performing tasks.

### 3. Efficiency

- **CLI:**
  - **Faster for experienced users:** Once commands are learned, tasks can be performed quickly.
  - **Automation:** Easily scriptable and automatable, allowing for repetitive tasks to be streamlined.

- **GUI:**
  - **Slower for repetitive tasks:** Clicking through menus and windows can be time-consuming.
  - **Limited automation:** Automating tasks often requires additional tools or scripting.

### 4. Power and Flexibility

- **CLI:**
  - **Highly powerful:** Provides access to a wide range of system functions and utilities.
  - **Customizable:** Allows for extensive customization and configuration.

- **GUI:**
  - **Limited functionality:** Some advanced tasks may not be accessible or may be more cumbersome to perform.
  - **Less customizable:** Customization options are often more limited compared to the CLI.

### 5. Resource Usage

- **CLI:**
  - **Low resource usage:** Generally consumes fewer system resources.
  - **Lightweight:** Ideal for remote access and low-resource environments.

- **GUI:**
  - **High resource usage:** Requires more system resources to render graphical elements.
  - **Heavyweight:** Can be resource-intensive, especially for complex applications.

### 6. Remote Access

- **CLI:**
  - **Ideal for remote access:** Tools like SSH allow for secure and efficient remote management.
  - **Text-based:** Requires minimal bandwidth and is less affected by network latency.

- **GUI:**
  - **Less efficient for remote access:** Remote desktop tools can be slower and more resource-intensive.
  - **Graphical:** Requires more bandwidth and is more affected by network latency.

## When to Use CLI vs. GUI

- **Use CLI when:**
  - You need to perform tasks quickly and efficiently.
  - You are automating repetitive tasks.
  - You need to manage remote servers or devices.
  - You are working in a low-resource environment.

- **Use GUI when:**
  - You are performing simple, one-time tasks.
  - You are new to the system and need visual cues.
  - You prefer a more intuitive and user-friendly interface.
  - You are working with graphical applications or media.

Understanding the strengths and weaknesses of both CLI and GUI can help you choose the right tool for the job, making your workflow more efficient and effective.


<br>

# Understanding Different Types of CLIs

## Shell vs. Bash vs. Terminal vs. Command Prompt

### What is a Shell?

A shell is a command-line interpreter that provides an interface for users to interact with the operating system. It accepts commands in text form and executes them. Shells are essential for performing tasks, running scripts, and managing system resources.

### What is Bash?

Bash (Bourne Again SHell) is one of the most widely used shells in Unix-based systems, including Linux and macOS. It is an enhanced version of the Bourne shell (sh) and provides a rich set of features for command-line interaction, scripting, and automation.

### What is a Terminal?

A terminal is a text-based interface that allows users to interact with the shell. It provides a window where you can type commands and see the output. Terminals can be graphical applications (like Terminal on macOS or GNOME Terminal on Linux) or text-based (like the console in a server environment).

### What is Command Prompt?

Command Prompt is the command-line interpreter for Windows operating systems. It provides a simple text-based interface for executing commands and managing the system. Command Prompt is often used for basic administrative tasks and scripting.

## Comparing Common CLIs

### Unix-based Shells

#### Bash (Bourne Again SHell)

<img src="https://imgs.search.brave.com/8LcV8PTPFpWPggjmBdFS4LcI1lhk6nPWlFO2EIyjDM0/rs:fit:860:0:0:0/g:ce/aHR0cDovL3Rpc3d3/dy5jYXNlLmVkdS9w/aHAvY2hldC9pbWcv/YmFzaC1sb2dvLXdl/Yi5wbmc" alt="drawing" width="200"/>

- **Features:**
  - Rich scripting capabilities
  - Command history and editing
  - Variable and function support
  - Job control and background processing

- **Use Cases:**
  - System administration
  - Scripting and automation
  - Software development

- **Pros and Cons:**
  - **Pros:** Widely supported, powerful scripting, extensive documentation
  - **Cons:** Can be complex for beginners, limited autocompletion compared to other shells

#### Zsh (Z Shell)

<img src="https://www.breakingtech.fr/wp-content/uploads/2023/04/ohmyzsh.png" alt="drawing" width="200"/>

- **Features:**
  - Advanced autocompletion
  - Customizable prompt and themes
  - Powerful scripting capabilities
  - Shared history between sessions

- **Use Cases:**
  - Enhanced user experience
  - Customizable and extensible shell
  - Advanced scripting and automation

- **Pros and Cons:**
  - **Pros:** Highly customizable, powerful autocompletion, extensive plugin support
  - **Cons:** Slightly slower startup time compared to Bash, steeper learning curve for advanced features

#### Fish (Friendly Interactive SHell)

<img src="https://i.ytimg.com/vi/C2a7jJTh3kU/maxresdefault.jpg" alt="drawing" width="200"/>

- **Features:**
  - User-friendly syntax
  - Autosuggestions and autocompletion
  - Web-based configuration
  - Scripting with a simpler syntax

- **Use Cases:**
  - Beginner-friendly shell
  - Interactive and intuitive command-line experience
  - Scripting with a simpler syntax

- **Pros and Cons:**
  - **Pros:** Easy to learn, user-friendly, powerful autosuggestions
  - **Cons:** Limited scripting capabilities compared to Bash and Zsh, smaller community and fewer plugins

### Windows-based CLIs

#### Command Prompt

<img src="https://nerdschalk.com/wp-content/uploads/2022/11/command-prompt-image-759x427.png" alt="drawing" width="200"/>

- **Features:**
  - Basic command-line interface
  - Support for batch scripting
  - Simple file and directory management

- **Use Cases:**
  - Basic system administration
  - Running batch scripts
  - Simple file operations

- **Pros and Cons:**
  - **Pros:** Simple and straightforward, widely used in Windows environments
  - **Cons:** Limited functionality compared to PowerShell, less powerful scripting capabilities

#### PowerShell

<img src="https://www.lebigdata.fr/wp-content/uploads/2021/03/Powershell.jpeg" alt="drawing" width="200"/>

- **Features:**
  - Advanced scripting and automation
  - Object-oriented command-line interface
  - Integration with .NET framework
  - Extensive cmdlet library

- **Use Cases:**
  - Advanced system administration
  - Automation and scripting
  - Managing Windows and other systems

- **Pros and Cons:**
  - **Pros:** Powerful scripting, extensive cmdlet library, integration with .NET
  - **Cons:** Steeper learning curve, more complex syntax compared to Command Prompt

### Console Emulators

A console emulator, also known as a terminal emulator, is a software application that mimics the behavior of a physical terminal or console. It provides a text-based interface where users can interact with the command-line interface (CLI) of an operating system.

#### Key Features of Console Emulators

1 . **Text-Based Interface:**

Console emulators display text output and accept text input, allowing users to type commands and see the results.

2. **Customization:**

Many console emulators offer extensive customization options, including themes, fonts, colors, and layouts.

3. **Tab and Split Pane Support:**

Advanced console emulators support multiple tabs and split panes, allowing users to run multiple command-line sessions simultaneously.
4. **Integration with Shells:**

Console emulators can integrate with various shells (e.g., Bash, Zsh, PowerShell) to provide a seamless command-line experience.
5. **Plugins and Extensions:**

Some console emulators support plugins and extensions that add additional functionality, such as enhanced autocompletion, syntax highlighting, and integration with other tools.

6. **Portability:**

Some console emulators are portable, meaning they can be run from a USB drive or other removable media without installation.

#### Cmder

<img src="https://villoro.com/_astro/0030-cmder.DdkP1FeY_Z15H2yp.webp" alt="drawing" width="200"/>

- **Features:**
  - Portable console emulator for Windows
  - Integration with various shells (Bash, PowerShell, etc.)
  - Customizable and extensible

- **Use Cases:**
  - Enhanced command-line experience on Windows
  - Portable and customizable terminal
  - Integration with multiple shells

- **Pros and Cons:**
  - **Pros:** Portable, customizable, supports multiple shells
  - **Cons:** Windows-only, can be resource-intensive

#### Terminus

<img src="https://i.ytimg.com/vi/w-f074YweOY/maxresdefault.jpg" alt="drawing" width="200"/>

- **Features:**
  - Cross-platform terminal emulator
  - Highly customizable and extensible
  - Support for multiple shells and plugins

- **Use Cases:**
  - Cross-platform terminal
  - Customizable and extensible command-line experience
  - Integration with multiple shells

- **Pros and Cons:**
  - **Pros:** Cross-platform, highly customizable, extensive plugin support
  - **Cons:** Can be complex to configure, may require more system resources

#### iTerm2

<img src="https://www.seomemento.com/content/images/size/w1460/2023/12/logo2x-1.jpg" alt="drawing" width="200"/>

- **Features:**
  - Advanced terminal emulator for macOS
  - Split panes and tabs
  - Customizable and extensible
  - Integration with various shells

- **Use Cases:**
  - Enhanced command-line experience on macOS
  - Customizable and extensible terminal
  - Integration with multiple shells

- **Pros and Cons:**
  - **Pros:** Powerful features, customizable, macOS-specific enhancements
  - **Cons:** macOS-only, can be resource-intensive

## Choosing the Right CLI

### Factors to Consider

- **Operating System:** Choose a CLI that is compatible with your operating system.
- **Use Case:** Consider the tasks you need to perform and choose a CLI that best supports those tasks.
- **Ease of Use:** For beginners, a user-friendly CLI like Fish or Command Prompt may be more suitable.
- **Customization:** If you need extensive customization, consider CLIs like Zsh, Terminus, or iTerm2.
- **Scripting:** For advanced scripting and automation, Bash, PowerShell, or Zsh are excellent choices.

### Recommendations for Different Use Cases

- **Basic System Administration:** Command Prompt (Windows), Bash (Linux/macOS)
- **Advanced Scripting and Automation:** PowerShell (Windows), Bash or Zsh (Linux/macOS)
- **Enhanced User Experience:** Fish (Linux/macOS), Cmder (Windows), iTerm2 (macOS)
- **Cross-Platform Use:** Terminus

Understanding the different types of CLIs and their features can help you choose the right tool for your needs, making your command-line experience more efficient and enjoyable.


<br>

# Learn the Command Line

The command line is a powerful tool for performing a wide range of tasks efficiently. This section will guide you through essential commands and concepts to help you become proficient in using the command line.

## Navigating the File System

### Basic Commands

- **pwd (Print Working Directory):**
  - Displays the current directory.
  - Example: `pwd`

- **ls (List):**
  - Lists the contents of a directory.
  - Example: `ls`
  - Options:
    - `ls -l`: Long format, showing detailed information.
    - `ls -a`: Show hidden files.
    - `ls -h`: Human-readable sizes.

- **cd (Change Directory):**
  - Changes the current directory.
  - Example: `cd /path/to/directory`
  - Special directories:
    - `cd ..`: Move up one directory.
    - `cd ~`: Move to the home directory.
    - `cd -`: Move to the previous directory.

## Viewing and Changing the File System

### Basic Commands

- **cat (Concatenate):**
  - Displays the contents of a file.
  - Example: `cat filename`

- **less:**
  - Views the contents of a file one screen at a time.
  - Example: `less filename`

- **head:**
  - Displays the first few lines of a file.
  - Example: `head filename`

- **tail:**
  - Displays the last few lines of a file.
  - Example: `tail filename`
  - Options:
    - `tail -f filename`: Follow the file, updating the display as new lines are added.

- **cp (Copy):**
  - Copies files or directories.
  - Example: `cp source destination`
  - Options:
    - `cp -r source destination`: Recursively copy directories.

- **mv (Move):**
  - Moves or renames files or directories.
  - Example: `mv source destination`

- **rm (Remove):**
  - Deletes files or directories.
  - Example: `rm filename`
  - Options:
    - `rm -r directory`: Recursively remove directories.
    - `rm -f filename`: Force removal without confirmation.

## Redirecting Input and Output

### Basic Commands

- **> (Output Redirection):**
  - Redirects the output of a command to a file, overwriting the file if it exists.
  - Example: `command > filename`

- **>> (Append Output Redirection):**
  - Redirects the output of a command to a file, appending to the file if it exists.
  - Example: `command >> filename`

- **< (Input Redirection):**
  - Redirects the input of a command from a file.
  - Example: `command < filename`

- **| (Pipe):**
  - Passes the output of one command as input to another command.
  - Example: `command1 | command2`

## Configuring the Environment

### Basic Commands

- **export:**
  - Sets environment variables.
  - Example: `export VARIABLE=value`

- **unset:**
  - Removes environment variables.
  - Example: `unset VARIABLE`

- **source (or .):**
  - Executes a script in the current shell session.
  - Example: `source script.sh` or `. script.sh`

- **alias:**
  - Creates shortcuts for commands.
  - Example: `alias ll='ls -l'`

## Working with Files and Directories

### Basic Commands

- **touch:**
  - Creates an empty file or updates the timestamp of an existing file.
  - Example: `touch filename`

- **mkdir (Make Directory):**
  - Creates a new directory.
  - Example: `mkdir directory`
  - Options:
    - `mkdir -p directory`: Creates parent directories as needed.

- **rmdir (Remove Directory):**
  - Removes an empty directory.
  - Example: `rmdir directory`

## Managing Processes

### Basic Commands

- **ps (Process Status):**
  - Displays information about running processes.
  - Example: `ps`
  - Options:
    - `ps aux`: Displays detailed information about all processes.

- **kill:**
  - Sends signals to processes, typically to terminate them.
  - Example: `kill PID`
  - Options:
    - `kill -9 PID`: Forcefully terminates a process.

- **top:**
  - Displays a dynamic, real-time view of running processes.
  - Example: `top`

- **htop:**
  - An enhanced version of `top` with a more user-friendly interface.
  - Example: `htop`

## Networking Commands

### Basic Commands

- **ping:**
  - Sends ICMP ECHO_REQUEST packets to network hosts to test connectivity.
  - Example: `ping hostname`

- **curl:**
  - Transfers data from or to a server using various protocols.
  - Example: `curl http://example.com`

- **ssh (Secure Shell):**
  - Connects to a remote server securely.
  - Example: `ssh user@hostname`

## Package Management

### Basic Commands

- **apt (Debian/Ubuntu):**
  - Manages software packages.
  - Example: `apt update`
  - Options:
    - `apt install package`: Installs a package.
    - `apt remove package`: Removes a package.

- **yum (CentOS/RHEL):**
  - Manages software packages.
  - Example: `yum update`
  - Options:
    - `yum install package`: Installs a package.
    - `yum remove package`: Removes a package.

- **brew (macOS):**
  - Manages software packages.
  - Example: `brew update`
  - Options:
    - `brew install package`: Installs a package.
    - `brew uninstall package`: Removes a package.

By mastering these essential commands and concepts, you will become proficient in using the command line to perform a wide range of tasks efficiently.

# Basic Commands Recapitulation

This table provides a quick reference for essential commands, their explanations, examples, options, and links to the documentation. By mastering these commands, you will become proficient in using the command line to perform a wide range of tasks efficiently.

| Command | Explanation | Example | Options | Link to Documentation |
|---------|-------------|---------|---------|-----------------------|
| `pwd`   | Displays the current directory. | `pwd` | N/A | [pwd Documentation](https://linux.die.net/man/1/pwd) |
| `ls`    | Lists the contents of a directory. | `ls` | `-l` (long format), `-a` (show hidden files), `-h` (human-readable sizes) | [ls Documentation](https://linux.die.net/man/1/ls) |
| `cd`    | Changes the current directory. | `cd /path/to/directory` | `cd ..` (move up one directory), `cd ~` (move to home directory), `cd -` (move to previous directory) | [cd Documentation](https://linux.die.net/man/1/cd) |
| `cat`   | Displays the contents of a file. | `cat filename` | N/A | [cat Documentation](https://linux.die.net/man/1/cat) |
| `less`  | Views the contents of a file one screen at a time. | `less filename` | N/A | [less Documentation](https://linux.die.net/man/1/less) |
| `head`  | Displays the first few lines of a file. | `head filename` | N/A | [head Documentation](https://linux.die.net/man/1/head) |
| `tail`  | Displays the last few lines of a file. | `tail filename` | `-f` (follow the file) | [tail Documentation](https://linux.die.net/man/1/tail) |
| `cp`    | Copies files or directories. | `cp source destination` | `-r` (recursively copy directories) | [cp Documentation](https://linux.die.net/man/1/cp) |
| `mv`    | Moves or renames files or directories. | `mv source destination` | N/A | [mv Documentation](https://linux.die.net/man/1/mv) |
| `rm`    | Deletes files or directories. | `rm filename` | `-r` (recursively remove directories), `-f` (force removal without confirmation) | [rm Documentation](https://linux.die.net/man/1/rm) |
| `>`     | Redirects the output of a command to a file, overwriting the file if it exists. | `command > filename` | N/A | [Redirection Documentation](https://www.gnu.org/software/bash/manual/bash.html#Redirections) |
| `>>`    | Redirects the output of a command to a file, appending to the file if it exists. | `command >> filename` | N/A | [Redirection Documentation](https://www.gnu.org/software/bash/manual/bash.html#Redirections) |
| `<`     | Redirects the input of a command from a file. | `command < filename` | N/A | [Redirection Documentation](https://www.gnu.org/software/bash/manual/bash.html#Redirections) |
| `|`     | Passes the output of one command as input to another command. | `command1 | command2` | N/A | [Pipe Documentation](https://www.gnu.org/software/bash/manual/bash.html#Pipelines) |
| `export`| Sets environment variables. | `export VARIABLE=value` | N/A | [export Documentation](https://linux.die.net/man/1/export) |
| `unset` | Removes environment variables. | `unset VARIABLE` | N/A | [unset Documentation](https://linux.die.net/man/1/unset) |
| `source`| Executes a script in the current shell session. | `source script.sh` or `. script.sh` | N/A | [source Documentation](https://linux.die.net/man/1/source) |
| `alias` | Creates shortcuts for commands. | `alias ll='ls -l'` | N/A | [alias Documentation](https://linux.die.net/man/1/alias) |
| `touch` | Creates an empty file or updates the timestamp of an existing file. | `touch filename` | N/A | [touch Documentation](https://linux.die.net/man/1/touch) |
| `mkdir` | Creates a new directory. | `mkdir directory` | `-p` (creates parent directories as needed) | [mkdir Documentation](https://linux.die.net/man/1/mkdir) |
| `rmdir` | Removes an empty directory. | `rmdir directory` | N/A | [rmdir Documentation](https://linux.die.net/man/1/rmdir) |
| `ps`    | Displays information about running processes. | `ps` | `aux` (displays detailed information about all processes) | [ps Documentation](https://linux.die.net/man/1/ps) |
| `kill`  | Sends signals to processes, typically to terminate them. | `kill PID` | `-9` (forcefully terminates a process) | [kill Documentation](https://linux.die.net/man/1/kill) |
| `top`   | Displays a dynamic, real-time view of running processes. | `top` | N/A | [top Documentation](https://linux.die.net/man/1/top) |
| `htop`  | An enhanced version of `top` with a more user-friendly interface. | `htop` | N/A | [htop Documentation](https://linux.die.net/man/1/htop) |
| `nano`  | A simple and user-friendly text editor. | `nano filename` | N/A | [nano Documentation](https://linux.die.net/man/1/nano) |
| `vim`   | A powerful and highly customizable text editor. | `vim filename` | N/A | [vim Documentation](https://linux.die.net/man/1/vim) |
| `ping`  | Sends ICMP ECHO_REQUEST packets to network hosts to test connectivity. | `ping hostname` | N/A | [ping Documentation](https://linux.die.net/man/8/ping) |
| `curl`  | Transfers data from or to a server using various protocols. | `curl http://example.com` | N/A | [curl Documentation](https://linux.die.net/man/1/curl) |
| `ssh`   | Connects to a remote server securely. | `ssh user@hostname` | N/A | [ssh Documentation](https://linux.die.net/man/1/ssh) |
| `apt`   | Manages software packages (Debian/Ubuntu). | `apt update` | `install package` (installs a package), `remove package` (removes a package) | [apt Documentation](https://linux.die.net/man/8/apt) |
| `yum`   | Manages software packages (CentOS/RHEL). | `yum update` | `install package` (installs a package), `remove package` (removes a package) | [yum Documentation](https://linux.die.net/man/8/yum) |
| `brew`  | Manages software packages (macOS). | `brew update` | `install package` (installs a package), `uninstall package` (removes a package) | [brew Documentation](https://docs.brew.sh/Manpage) |

This table provides a quick reference for essential commands, their explanations, examples, options, and links to the documentation. By mastering these commands, you will become proficient in using the command line to perform a wide range of tasks efficiently.

<br>
