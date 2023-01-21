#!/bin/bash

echo "Creating directories..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating user groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt password#carlos) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt password#maria) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt password#joao) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt password#debora) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt password#sebastiana) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt password#roberto) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt password#josefina) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt password#amanda) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt password#rogerio) -G GRP_SEC

echo "Specifying directory permissions...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "Finished....."