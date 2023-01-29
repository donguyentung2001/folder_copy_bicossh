#!/bin/bash

echo "Do you want to copy a folder from Haverford lab computers or Bryn Mawr lab computers (enter either 'hc' or 'bmc'):"
read college
echo "What is your username? (e.g. tdo)"
read username 
echo "What is your password?"
read -s password 
echo "Enter the path to the folder you want to copy (e.g. cs356)?"
read folder 
if [ $college = "hc" ]
then 
sshpass -p "$password" scp -r $username@willow.cs.haverford.edu:~/$folder/ ./
elif [ $college = "bmc" ] 
then 
sshpass -p "$password" scp -r $username@goldengate.cs.brynmawr.edu:~/$folder/ ./
else 
echo "Your college name is not valid!" 
fi 
