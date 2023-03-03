#!/bin/bash

echo "Início do script"
echo " "
echo "Atualizando servidor"

apt-get  update
apt-get upgrade -y

echo "Instalando apache2"
echo " "

apt-get install apache2 -y

echo "Instalando unzip"
echo " "

apt-get install unzip -y

echo "Baixando aplicação"
echo " "

cd /tmp
wget -O linux-site-dio.zip https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo"
echo " "

unzip linux-site-dio.zip

echo "Copiando arquivos para o diretório padrão do apache"
echo " "

cd linux-site-dio-main
cp -R * /var/www/html/

echo "Fim da execução do script"
echo " "
