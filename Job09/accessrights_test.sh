#recup les données du doc(commande sed ?) (tableau).
#sed -n "1p" Shell_Userlist.csv  pour avoir la ligne 1
ip="$1" #but de verif
prenom="$2" #utile dans useradd
nom="$3" #utile dans useradd
mdp="$4" #utile dans paswd
nmax=$(sed -n '$=' Shell_Userlist.csv)
role="$5" #utile dans les if des role
j=2
test=$nmax

IFS=',' ; for i in {1..5}
do
        IFS=',' ; while  [ $j -le $nmax ]
        do
                echo $j
                sed -n ""$j"p" Shell_Userlist.csv |tr ',' ' '

                if [ `sed -n ""$j"p" Shell_Userlist.csv |tr ',' ' '` = "Admin" ]; then
                        echo $(awk '{print $2 $3}' Shell_Userlist.csv) |sudo useradd -m  #useradd
                        echo $(awk '{print $2 $3}' Shell_Userlist.csv) |sudo passwd  #paswd
                        echo $(awk '{print $4}' Shell_Userlist.csv)
                        echo $(awk '{print $4}' Shell_Userlist.csv)
#                       echo sudo adduser "$2 $3" sudo #add au sudoers

                else
                        echo $(awk '{print $2 $3}' Shell_Userlist.csv) |sudo useradd -m
                        echo $(awk '{print $2 $3}' Shell_Userlist.csv) |sudo passwd
                        echo $(awk '{print $4}' Shell_Userlist.csv)
                        echo $(awk '{print $4}' Shell_Userlist.csv 
                ((j++))
        fi
        done

done
