## What are Bash Scripts?

The *Bash scripts* are text files that contains one or more instructions or commands that are executed by the
*Bash Shell*, a CLI (command-line interface) for Unix-based operating systems.

These scripts are used to automate tasks, execute system commands, manipulate files and directories, manage processes and other activities.

They are written in a scrippting language known as *Bash* (Bourne Again Shell). This language provide features from programming languages to extend the capabilities of scripts like, looping, checing coditionals, creating and assigning values to variables and arrays and etc.

This repository contains some *scripts* to automate some tasks on Linux or just some cool projects. The main OS system used here was Fedora 40 (some commands may not work properly on other Linux distributions).

## What is a *Shebang*?

Every *Bash script*, besides the file extension `.sh`, they all start with a special line at the first line. This command is used by the shell to locate where the interpreter is installed and run the script. There are three main ways to run a script:

1. `#!/usr/bin/env bash`: recommend way, a program called `env` will execute the `bash` wherever the file is located
2. `#!/bin/bash`: shortest way
3. `bash *.sh`: if you don't specify the shebang at the beginning

## How to execute a Bash Script?

The *Bash Scripts* were designed to be executed on Unix-based operating systems. Bash is shipped by default on most of the Linux distributions (Zash for recent MacOS versions), so these scripts are not going to work on native Windows. For Windows, there is PowerShell and Batch scripts, which are not covered in this repository. In case, you are not in a Linux or MacOS, these are some suggestions for you to get a terminal with Bash:

1. Use a *Virtual Machine* (VirtualBox, VMWare) with a Linux distro
2. *Git Bash* emulator for Windows
3. *Docker* container running a Linux distro
4. [*VS Code*](https://code.visualstudio.com/) or *Codespaces* from *GitHub*
5. [*Windows subsystem for Linux*](https://learn.microsoft.com/en-us/windows/wsl/about)


To execute a script, type on the terminal the commands:
* `bash filename.sh`
* `./filename.sh`
