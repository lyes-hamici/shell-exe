signe="$2"
result="" 
if [ "$signe" = "x" ]; then
	result=$(($1 * $3 ))
	echo $result

elif [ "$signe" = "/" ]; then
        result=$(($1 / $3 ))
        echo $result


elif [ "$signe" = "-" ]; then
        result=$(($1 - $3 ))
        echo $result


elif [ "$signe"  = "+" ]; then
        result=$(($1 + $3 ))
        echo $result

fi
