file="/etc/hosts"

if [ -f "$file" ]; then
   echo "file is already existing"
else  
   echo "file is not found"
fi

# directory = [-d "$directory" ]
#path = [ -e "$path" ]
