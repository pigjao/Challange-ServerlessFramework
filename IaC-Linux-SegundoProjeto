#!/bin/bash

echo "Atualizando o Servidor ..."
apt-get update
apt-get upgrade -y

echo "Instalando os programas necessários ..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e configurando os arquivos da aplicação web .."
cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/

echo " fim .."
