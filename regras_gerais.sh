#!/bin/bash

echo "Criando Diretórios"

mkdir /adm
mkdir /ven
mkdir /sec
mkdir /publico

echo "Criando grupos"

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "Criando usuários"

useradd joao -c "Usuário Joao" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -c "Usuário Maria" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd carlos -c "Usuário Carlos" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM

useradd sebastiana -c "Usuário Sebastiana" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd debora -c "Usuário debora" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd roberto -c "Usuário Roberto" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM

useradd josefina -c "Usuário Josefina" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd rogerio -c "Usuário Rogerio" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd amanda -c "Usuário Amanda" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM

echo "Permissões dos diretórios..."

chown root:GRP_VEN /ven
chown root:GRP_ADM /adm
chown root:GRP_SEC /sec

chmod 770 /ven
chmod 770 /adm
chmod 770 /sec
chmod 777 /publico

echo "Encerrando"
