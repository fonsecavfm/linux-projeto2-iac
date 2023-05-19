#!/bin/bash

#Script para provisionamento de um servidor WEB Apache

#Atualizando o servidor
apt-get update
apt-get upgrade -y

echo "Instalando apache e unzip"
apt-get install apache2 unzip -y

#Download e extracao da aplicacao
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

#Diretorio de execucao da aplicacao
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finalizado com sucesso!"
