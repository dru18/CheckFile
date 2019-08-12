#Defining Bash Interpreter
#! /bin/bash

#If no file name mentioned..
if [ -z $1 ]; then
echo -e "[!] Pass a file name with program.\n\nusage: checkfile [filename]\n\nexample:\ncheckfile testfile.txt"
exit
else

    #If file exists.
    if [ -e $1 ]; then
    echo "[+] [$1] exists."

        #If file is Regualar file.
        if [ -f $1 ]; then
        echo -e "\n[+] [$1] is a regular file."
        fi

        #If file is Directory.
        if [ -d $1 ]; then
        echo -e "\n[+] [$1] is a directory."
        fi
        #If file is readable.
        if [ -r $1 ]; then
        echo -e "\n[+] [$1] is readable."
        fi

        #If file is writable.
        if [ -w $1 ]; then
        echo -e "\n[+] [$1] is writable."
        fi

        if [ -x $1 ]; then
        echo -e "\n[+] [$1] is executable."
        fi

    #IF files don't exist
    else echo "[!] [$1] dont exist"
    fi
fi | cowsay -f tux | toilet -f term --gay
