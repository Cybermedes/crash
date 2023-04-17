#!/usr/bin/env bash
#Checar atualizações presentes e instalar

echo "
---------------------------
Checando atualizações
---------------------------
"
sudo apt update -y

sudo apt full-upgrade -y

sudo apt autoremove -y

echo "
----------------------------------
Atualizações finalizadas
----------------------------------
"
