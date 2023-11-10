touch number_connection-Date.txt 
last abarax |wc -l > number_connection-Date.txt
date -R > number_connection-Date
file_name=number_connection-Date.txt
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
echo "Current Time : $current_time"
new_fileName=$file_name.$current_time
echo "New FileName: " "$new_fileName"
cp $file_name $new_fileName
echo "You should see new file generated with timestamp on it.."
tar -cvf $new_fileName.tar $new_fileName
mv $new_fileName.tar  /home/abarax/shell.exe/job8/Backup/

#30 * * * * /home/abarax/shell.exe/Job08/./get_logs.sh

