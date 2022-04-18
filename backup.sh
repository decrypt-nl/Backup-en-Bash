#!/bin/bash

#Creation de l'archive 

backup_files="/home/user /opt /root " #Les répertoires sources
destination="/mnt/backup" #Le répertoire qui va stocker temporairement votre archive
day=$(date +%F)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"
echo "Sauvegarde de $backup_files dans $destination/$archive_file"
date
echo
tar cf $destination/$archive_file $backup_files
echo
echo "Creation de la Backup ✓"
date
ls -lh $destination


#Envoi sur la machine distante

scp $destination/$hostname-$day.tgz user@ip:/répertoire/distant #Information sur votre machine distante 
Echo "Backup Envoyer ✓"
rm -rf $destination/$hostname-$day.tgz








   





