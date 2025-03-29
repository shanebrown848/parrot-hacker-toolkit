#!/bin/bash

read -p "Enter target IP/domain: " target
sudo nmap -sS -T4 -A $target
