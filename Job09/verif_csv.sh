dernire_verif=$"wc -l Shell_Userlist.csv"
rm /home/abarax/shell.exe/job9/Shell_Userlist.csv
wget https://drive.google.com/file/d/1sUYmj2nO_SlWltTETR6gGCpB4krYGSau/view
last --file Shell_Userlist.csv |wc -l
if [ "$derniere_verif" != "wc -l Shell_Userlist.csv" ]; then
	sudo bash accessrights.sh
else
	exit 1

#cron * * * * * /home/abarax/shell.exe/Job09/./verif_csv.sh
