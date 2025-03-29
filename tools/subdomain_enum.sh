#!/bin/bash

read -p "Enter target domain: " domain
amass enum -d $domain
