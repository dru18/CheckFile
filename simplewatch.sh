#Defining Bash Interpreter
#! /bin/bash

#If not all
if [ -z $2 ]; then
  #If no file name mentioned..
  if [ -z $1 ]; then
    # watch list working directory.
    watch ls ./; 
  else
    # If --help
    if [ $1 == '--help' ]; then echo -e "Usage: dwatch [file name | directory name] [all]\n\nExample:\n\ndwatch\n\ndwatch testfile.txt\n\ndwatch testdirectory/\n\ndwatch testdirectory all" | cowsay -f tux | toilet -f term --gay; 
    else
      #If file exist
      if [ -e $1 ]; then
        #If file is Directory.
        if [ -d $1 ]; then
          # watch list input directory.
          watch ls -Ftshl $1
        else
        # watch cat input file.
        watch cat $1
        fi
      #IF file/diretory don't exist
      else echo "[!] [$1] don't exist" | cowsay -f tux | toilet -f term --gay
      fi
    fi
  fi
else
  #If all
  if [ $2 == 'all' ]; then
    #If directory exist.
    if [ -e $1 ]; then
      #If input is a directory.
      if [ -d $1 ]; then
        # watch list input directory. 
        watch ls -Ftshla $1
      else echo -e "[!] [$1] is a file.\n\nDon't use 'all' to watch file." | cowsay -f tux | toilet -f term --gay
      fi
    #IF file/diretory don't exist
    else echo "[!] [$1] don't exist" | cowsay -f tux | toilet -f term --gay
    fi
  #IF wrong parameter at [2]
  else echo "[!] [$2] is wrong parameter, use 'all' instead" | cowsay -f tux | toilet -f term --gay
  fi
fi
