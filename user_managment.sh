#!/usr/bin/env bash

################################################
# Developed by: Andrey M.
# Purpose: User managment on linux machine
# Date: 01-03-2025
# Version: 1.0.0
################################################
set -o errexit
set -o pipefail
set -o nounset
################################################

################################################
# Chapter 27
################################################

# 1.
who am i

# 2.
who

# 3.
w

# 4.
id | awk '{print $1}'

# 5.
su vasia
exit

# 6.
su - vasia
exit

# 7.
useradd -m vasia

# 8.
sudo useradd -m vasia


#####################################################
# Chapter 28
#####################################################

# 1.
sudo useradd -m -c "Serena Williams" serena 

# 2.
sudo useradd -m -c "Venus Williams" -s /bin/bash venus

# 3.
sudo cat  /etc/passwd /etc/shadow /etc/group | grep -E 'serena|venus'

# 4.
ls /home

# 5.
sudo useradd -m -s /bin/date einstime

# 7.

# 8.
sudo cat "Welcone!!!!" > /etc/skel/welcome.txt

# 9.
sudo useradd -m testuser
ls /home/testuser
sudo userdel -r testuser

# 10.
grep 'serena' /etc/passwd
sudo chsh -s /usr/bash
grep 'serena' /etc/passwd


##########################################################
# Chapter 29
##########################################################

# 1.
sudo passwd serena # in prompt write hunter2

# 2. 
sudo passwd venus
sudo grep venus /etc/shadow
sudo usermod -L venus
sudo grep venus /etc/shadow

# 3.
sudo passwd -d serena
sudo grep serena /etc/shadow

# 4.
#  Locking disable using password and can be enable again. Disabling delete the password and need create another one on restore.

# 5.
su - serena
passwd

# 6.
sudo chage -M 10 serena

# 7.
sudo vim /etc/login.defs # find row  PASS_MAX_DAYS and change 9999 to 10
# or use regex to replace
sudo sed -i 's/^PASS_MAX_DAYS[[:space:]]\+99999/PASS_MAX_DAYS   10/' /etc/login.defs

# 8.
sudo cp /etc/shadow /etc/shadow_backup
sudo vi /etc/shadow
# yes, serena can login with password hunter42

# 9. 
# vipw lock file for edit to another users/shels. Prevent from 2 people or 2 places to edit sensitive files.

# 10.
chsh -l
cat /etc/shells
# the output is equal

# 11.
# -d option

# 12.
# The char "!" at begining of password hash means that password is locked
grep serena /etc/shadow 
sudo passwd -S serena


################################################################
# Chapter 30
################################################################

# 1.
ls -a ~/.bash* ~/.prof* /etc/prof* /etc/bash*

# 2.
# Readed

# 3.
cat "alias clean='clear'" >> ~/.bashrc
cat "alias cl='clear'" >> ~/.bash_profile
cat "alias cle='clear'" >> /etc/profile
cat "alias cleann='clear'" >> /etc/bashrc

# 4.
# Done

# 5. 
# Not

# 6.
# If any of the files exist but cannot be read, bash reports an error: Yes it matter.


#####################################################################
# Chapter 31
#####################################################################

# 1.
sudo groupadd tennis
sudo groupadd football
sudo groupadd sports

# 2.
sudo usermod -aG tennis,sports venus

# 3.
sudo groupmode -n foot football

# 4.
sudo vi /etc/group

# 5.
sudo id serena

# 6.
sudo gpasswd -A serena foot,sports


