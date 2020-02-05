#!/bin/bash
#
# this script displays some host identification information for a simple Linux machine
#
# Sample output:
#   Hostname        : hostname
#   LAN Address     : 192.168.2.2
#   LAN Hostname    : host-name-from-hosts-file
#   External IP     : 1.2.3.4
#   External Name   : some.name.from.our.isp

# Task 1: Clean up this script by moving the commands that generate the output to separate lines
#         that put each command's output into variables. Once you have that done, Use those variables
#         in the output section at the end of the script. If the commands included in this script
#         don't make sense to you, feel free to create your own commands to find your ip addresses,
#         host names, etc.

# Task 2: Add variables for the default router's name and IP address.
#         Add a name for the router's IP address to your /etc/hosts file.
#         The router's name and address must be obtained by dynamically
#         finding the router IP address from the route table, and looking
#         up the router's hostname using its IP address, not by just
#         printing out literal text.
# sample of desired output:
#   Router Address  : 192.168.2.1
#   Router Hostname : router-name-from-hosts-file

# we use the hostname command to get our system name
# the LAN name is looked up using the LAN address in case it is different from the system name
# finding external information relies on curl being installed and relies on live internet connection
# awk is used to extract only the data we want displayed from the commands which produce extra data
# this command is ugly done this way, so generating the output data into variables is recommended to make the script more readable.
# e.g.
#   interface_name=$(ip a |awk '/: e/{gsub(/:/,"");print $2}')

#===================VARIABLES AND DATA GATHERING=======================#
fHostname=$(hostname)
iFacename=$(ip a |awk '/: e/{gsub(/:/,"");print $2}')
lAddress=$(ip a s $interfacename|awk '/inet /{gsub(/\/.*/,"");print $2}')
lHostname=$(getent hosts $lanaddress | awk '{print $2}')
eIp=$(curl -s icanhazip.com)
eName=$(getent hosts $externalip | awk '{print $2}')
rAddress=$(route -n | grep '^0.0.0.0' | awk '{print $2}')
rHostname=$(getent hosts 127.0.0.1 | awk '{print $2}')

cat <<EOF
Hostname        : $fHostname
LAN Address     : $lAddress
LAN Hostname    : $lHostname
External IP     : $eIp
External Name   : $eName
Router Address  : $rAddress
Router Hostname : $rHostname
EOF
