#!/bin/bash

echo "Criando Diretórios..."

mkdir /publico
mkdir /adm
mkdir /vendas
mkdir /secretariado


echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários E adicioanndo aos grupos..."

useradd carlos -c "Carlos Sudlowski"  -m -s /bin/bash -p $(openssl passwd -1 0210) -G GRP_ADM
useradd maria -c "Maria Eduarda" -m -s /bin/bash -p $(openssl passwd -1 0210) -G GRP_ADM
useradd joao -c "Joao Brossa" -m -s /bin/bash -p $(openssl passwd -1 0210) -G GRP_ADM

useradd debora -c "Debora Pereira"  -m -s /bin/bash -p $(openssl passwd -1 0210) -G GRP_VEN
useradd clara -c "Clara Dias" -m -s /bin/bash -p $(openssl passwd -1 0210) -G GRP_VEN
useradd anderson -c "Anderson Sales" -m -s /bin/bash -p $(openssl passwd -1 0210) -G GRP_VEN

useradd italo -c  "Italo Farly" -m -s /bin/bash -p $(openssl passwd -1 0210) -G GRP_SEC
useradd renata -c "Renata Pires" -m -s /bin/bash -p $(openssl passwd -1 0210) -G GRP_SEC
useradd rodrigo -c "Rodrigo Campos" -m -s /bin/bash -p $(openssl passwd -1 0210) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /vendas
chown root:GRP_SEC /secretariado


chmod 770 /adm
chmod 770 /vendas
chmod 770 /secretariado
chmod 777 /publico

echo "Fim..."
