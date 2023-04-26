#!/usr/bin/env bash

freespace=$(df -h / | awk 'NR==2 {print $4}')
freemem=$(free -h | awk 'NR==2 {print $4}')

greentext="\033[32m"
bold="\033[1m"
normal="\033[0m"

echo "********************************************************************"
printf -v logdate "%(%d-%m-%Y)T"

echo -e "$bold Relatório rápido para o sistema $greentext $HOSTNAME$normal"
printf "\tVersão do Kernel:\t\t%s\n" "$(uname -r)"
printf "\tVersão do Bash:\t\t\t%s\n" "$BASH_VERSION"
printf "\tArmazenamento livre:\t\t%s\n" "$freespace"
printf "\tMemória livre:\t\t\t%s\n" "$freemem"
printf "\tArquivos no pwd:\t\t%s\n" "$(ls | wc -l)"
printf "\tGerado em:\t\t\t%s\n" "$logdate"
echo "********************************************************************"