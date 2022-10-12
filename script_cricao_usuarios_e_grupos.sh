#!/bin/bash

echo "Iniciando a crição de diretórios..."

mkdir publico
mkdir adm
mkdir ven
mkdir sec

echo "Diretórios criados!"

echo "Iniciando a criação de grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação dos grupos concluída!!!"

echo "Iniciando criação dos usuários...."

echo "Criando usuários para o grupo ADM..."

useradd carlos -c "Carlos Frederico" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM
useradd maria -c "Maria do Carmos" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM
useradd joao -c "João das Coves" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM

echo "Criando usuários para o grupo VEN..."

useradd debora -c "Debora Bobora" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Conda" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
useradd roberto -c "Roberto Roberto" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN

echo "Criando usuários para o grupo SEC..."

useradd josefina -c "Josefina Magra" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC
useradd amanda -c "Amanda Lima" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC
useradd rogerio -c "Rogério de Castro" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC


echo "Criando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 adm
chmod 770 ven
chmod 770 sec
chmod 777 publico

echo "**************************************************"

echo "Procedimento Finalizado!!!!"
