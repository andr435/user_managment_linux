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
sudo userdel -r testuser

# 10.
grep 'serena' /etc/passwd
sudo chsh -s /usr/bash
grep 'serena' /etc/passwd



