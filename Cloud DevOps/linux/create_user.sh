#!/bin/bash


echo "Creating system users...."

useradd guest10 -c "Guest user" -s /bin/bash -m -p $(openssl passwd -crypt password#guest10)
passwd guest10 -e

useradd guest11 -c "Guest user" -s /bin/bash -m -p $(openssl passwd -crypt password#guest11)
passwd guest11 -e

useradd guest12 -c "Guest user" -s /bin/bash -m -p $(openssl passwd -crypt password#guest12)
passwd guest12 -e

useradd guest13 -c "Guest user" -s /bin/bash -m -p $(openssl passwd -crypt password#guest13)
passwd guest13 -e

echo "Finished!!"
