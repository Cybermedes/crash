## O que são Bash scripts?

Os *Bash scripts* são arquivos de texto que contêm um ou mais comandos e instruções que podem ser executados por um interpretador de *shell Bash*, presente em sistemas operacionais baseados em Unix e Linux.

Eles são utilizados para automatizar tarefas, executar comandos de sistema, manipular arquivos e diretórios, gerenciar processos e outras atividades. 

Este repositório contém alguns *Bash Scripts* para automatizar atividades no Linux. Os scripts foram feitos para a distribuição Ubuntu 22.04.

## O que é um *Shebang*?

Todo *Bash script*, além da extensão `.sh`, começam com um comando na primeira linha que serve para o *shell* saber qual programa utilizar para executar o *script*. Dois tipos comuns de *shebangs* para *Bash* são:

1. `#!/usr/bin/env bash`: caminho absoluto, recomendado para OS pois o sistema ira executar o Bash onde quer que esteja instalado
2. `#!/bin/bash`: recomendado para emuladores pois esses apenas usam os diretórios necessários

## Como executar um Bash script

*Bash scripts* foram criados para serem executados em sistemas operacionais baseados em Unix, Linux e macOS. Para executar um *script* caso não tenha um terminal *shell*:

1. Usar uma *Virtual Machines* (VirtualBox, VMWare) com alguma distribuição Linux
2. Emulador de terminal como *Git Bash*
3. OS em alguma *cloud* como AWS, *Google Cloud Platform*, *Microsoft Azure*
4. Contêineres *Docker* com alguma OS Linux
5. Terminal do [*VS Code*](https://code.visualstudio.com/) ou *Codespaces* do *GitHub*
6. [*Windows subsystem for Linux*](https://learn.microsoft.com/en-us/windows/wsl/about)


Para executar um *script* digite no terminal os comandos:
* `bash filename.sh`
* `./filename.sh`
