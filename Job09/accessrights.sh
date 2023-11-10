mon_fichier=Shell_Userlist.csv

while IFS=", " read -r id prenom nom mdp role;
do
	if [ "Id" != "$id" ]; then
	sudo useradd --badname -p `mkpasswd "$mdp"` -d /home/"$prenom $nom" -m -g users -s /bin/bash "$prenom $nom"

	fi

	if [ "$role" = "Admin" ]; then
	sudo useradd "$prenom $nom" sudo
	fi

done < "$mon_fichier"

