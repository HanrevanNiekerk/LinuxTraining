#!/bin/bash
# network_diagnostics.sh
# Network diagnostics toolkit for DevOps / Network Admins

set -euo pipefail

LOG_FILE="$HOME/network_diagnostics.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

GATEWAY=$(ip route | awk '/default/ {print $3}')
DNS_TEST_DOMAIN="google.com"
PUBLIC_IP="8.8.8.8"

log() {
  echo "[$TIMESTAMP] $1" | tee -a "$LOG_FILE"
}

header() {
  echo ""
  echo "========== $1 =========="
}

header "Network Diagnostics Started"
log "Running as user: $(whoami)"

# 1. Check network interfaces
header "Network Interfaces"
ip -brief addr show | tee -a "$LOG_FILE"

# 2. Check default route
header "Default Route"
if [[ -n "$GATEWAY" ]]; then
  log "Default gateway detected: $GATEWAY"
else
  log "ERROR: No default gateway found"
fi

# 3. DNS resolution test
header "DNS Resolution Test"
if getent hosts "$DNS_TEST_DOMAIN" > /dev/null; then
  log "DNS resolution successful for $DNS_TEST_DOMAIN"
else
  log "ERROR: DNS resolution failed for $DNS_TEST_DOMAIN"
fi

# 4. Ping gateway
header "Gateway Connectivity Test"
if ping -c 3 "$GATEWAY" > /dev/null 2>&1; then
  log "Gateway reachable"
else
  log "ERROR: Cannot reach gateway"
fi

# 5. Ping public IP
header "External Connectivity Test"
if ping -c 3 "$PUBLIC_IP" > /dev/null 2>&1; then
  log "External connectivity OK (ping $PUBLIC_IP successful)"
else
  log "ERROR: No external connectivity"
fi

# 6. Port and listening services overview
header "Listening Ports"
ss -tulnp | tee -a "$LOG_FILE"

# 7. Routing table
header "Routing Table"
ip route show | tee -a "$LOG_FILE"

# 8. Summary
header "Diagnostics Complete"
log "Network diagnostics finished"
