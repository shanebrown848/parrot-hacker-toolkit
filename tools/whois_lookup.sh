#!/bin/bash

read -p "Enter domain to lookup: " domain
whois $domain
