#!/bin/bash

# ===== Colors =====
RED="\e[31m"
GREEN="\e[32m"
BLUE="\e[34m"
YELLOW="\e[33m"
RESET="\e[0m"

# ===== Check input =====
if [ -z "$1" ]; then
  echo -e "${RED}Usage: $0 <domain_or_ip>${RESET}"
  exit 1
fi

TARGET=$1
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BASE_DIR="output/${TARGET}_${TIMESTAMP}"

# ===== Tool check =====
TOOLS=(nmap whatweb theHarvester dnsenum)

for tool in "${TOOLS[@]}"; do
  if ! command -v $tool &>/dev/null; then
    echo -e "${RED}[-] Missing tool: $tool${RESET}"
    exit 1
  fi
done

# ===== Create directories =====
mkdir -p "$BASE_DIR"/{nmap,whatweb,theharvester,dnsenum}

echo -e "${GREEN}[+] Starting recon on $TARGET${RESET}"
echo -e "${BLUE}[+] Output directory: $BASE_DIR${RESET}"

# ===== Nmap =====
echo -e "${YELLOW}[+] Running Nmap${RESET}"
nmap -sC -sV "$TARGET" \
  -oA "$BASE_DIR/nmap/scan" \
  > "$BASE_DIR/nmap/output.txt" 2>&1

# ===== WhatWeb =====
echo -e "${YELLOW}[+] Running WhatWeb${RESET}"
whatweb -a 3 "$TARGET" \
  > "$BASE_DIR/whatweb/output.txt" 2>&1

# ===== theHarvester =====
echo -e "${YELLOW}[+] Running theHarvester${RESET}"
theHarvester -d "$TARGET" -b all \
  > "$BASE_DIR/theharvester/output.txt" 2>&1

# ===== dnsenum =====
echo -e "${YELLOW}[+] Running dnsenum${RESET}"
dnsenum "$TARGET" \
  > "$BASE_DIR/dnsenum/output.txt" 2>&1

echo -e "${GREEN}[✓] Recon complete${RESET}"
