#!/bin/bash

# Color output
RED="\e[31m"
GREEN="\e[32m"
CYAN="\e[36m"
YELLOW="\e[33m"
NC="\e[0m"

clear
echo -e "${CYAN}██████╗  █████╗ ██████╗ ██████╗  ██████╗ ██████╗ ███████╗"
echo -e "██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔═══██╗██╔══██╗██╔════╝"
echo -e "██████╔╝███████║██║  ██║██████╔╝██║   ██║██████╔╝█████╗  "
echo -e "██╔═══╝ ██╔══██║██║  ██║██╔═══╝ ██║   ██║██╔═══╝ ██╔══╝  "
echo -e "██║     ██║  ██║██████╔╝██║     ╚██████╔╝██║     ███████╗"
echo -e "╚═╝     ╚═╝  ╚═╝╚═════╝ ╚═╝      ╚═════╝ ╚═╝     ╚══════╝${NC}"
echo ""
echo -e "${YELLOW}Welcome to the Parrot CLI Hacker Toolkit${NC}"
echo ""

while true; do
  echo "1) Nmap Network Scan"
  echo "2) Whois Lookup"
  echo "3) Subdomain Enumeration"
  echo "4) Password Brute-force (Hydra)"
  echo "5) Exit"
  echo ""
  read -p "Select an option: " option

  case $option in
    1) bash tools/nmap_scan.sh ;;
    2) bash tools/whois_lookup.sh ;;
    3) bash tools/subdomain_enum.sh ;;
    4) bash tools/password_attack.sh ;;
    5) echo -e "${GREEN}Goodbye, hacker 👋${NC}"; exit ;;
    *) echo -e "${RED}Invalid choice${NC}" ;;
  esac

  echo ""
  read -p "Press Enter to return to the menu..."
  clear
done
