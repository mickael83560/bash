#!/bin/bash

#clear

echo "outil de monitoring"
echo "Supervision de Apach2"
sudo service apache2 status | head -n 3

echo "espace disque utilisé" >> report.txt
df -h /dev/sda1 >> report.txt

echo "sauvegarde des fichier de configuration"
mkdir /mnt/hgfs/Debian\ 9/workshop/sauvegarde
mkdir /mnt/hgfs/Debian\ 9/workshop/save
cp /etc/apache2/sites-available/000-default.conf /mnt/hgfs/Debian\ 9/workshop/sauvegarde/
cp /etc/resolv.conf /mnt/hgfs/Debian\ 9/workshop/sauvegarde/
cp /etc/hosts /mnt/hgfs/Debian\ 9/workshop/sauvegarde/
cp /etc/nsswitch.conf /mnt/hgfs/Debian\ 9/workshop/sauvegarde/
cp /etc/network/interfaces /mnt/hgfs/Debian\ 9/workshop/sauvegarde/
#if [[ condition ]]; then
#	#statements
#fi
tar zcvf /mnt/hgfs/Debian\ 9/workshop/save/sauvegarde`date +%Y-%m-%d-%H-%M`.tar.gz /mnt/hgfs/Debian\ 9/workshop/sauvegarde/ 
pwd
rm -r /mnt/hgfs/Debian\ 9/workshop/sauvegarde
#cd /mnt/hgfs/Debian\ 9/workshop/save/

#rm -f $(ls -1t | tail -1)