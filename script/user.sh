#!/bin/bash


# Add Local devops User
sudo adduser devops --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password

# add the password
echo "devops:nasa@123" | sudo chpasswd

#Enable Password Authentication
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config

#Restart ssh services
sudo service sshd restart

#Add Group to visudoers
echo "%devops ALL=(ALL) NOPASSWD: ALL" | sudo EDITOR="tee -a" visudo



# # Add Local IAC User
# sudo useradd -m -p $(openssl passwd -1 <india@123>) devops

# # #Enable Password Authentication
# sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config

# # #Restart ssh services
# sudo service sshd restart

# # #Add Group to visudoers
# echo "%devops ALL=(ALL)       NOPASSWD: ALL" | sudo EDITOR="tee -a" visudo