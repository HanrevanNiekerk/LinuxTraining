# !/bin/bash
# integrity_checker.sh
# Simple system integrity checker using SHA-256 hashes

set -euo pipefail

BASELINE_DIR="/var/lib/integrity_checker"
BASELINE_FILE="$BASELINE_DIR/baseline.sha256"
ALERT_LOG="$HOME/integrity_alerts.log"

FILES_TO_CHECK=(
  /etc/passwd
  /etc/group
  /etc/shadow
  /etc/sudoers
)

# Root check
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root"
  exit 1
fi

mkdir -p "$BASELINE_DIR"

create_baseline() {
  echo "Creating integrity baseline..."
  > "$BASELINE_FILE"

  for file in "${FILES_TO_CHECK[@]}"; do
    if [[ -f "$file" ]]; then
      sha256sum "$file" >> "$BASELINE_FILE"
    else
      echo "WARNING: $file not found" | tee -a "$ALERT_LOG"
    fi
  done

  chmod 600 "$BASELINE_FILE"
  echo "Baseline created at $BASELINE_FILE"
}

check_integrity() {
  echo "Checking system integrity..."

  TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
  ALERTED=false

  while read -r stored_hash stored_file; do
    if [[ ! -f "$stored_file" ]]; then
      echo "[$TIMESTAMP] FILE MISSING: $stored_file" | tee -a "$ALERT_LOG"
      ALERTED=true
      continue
    fi

    current_hash=$(sha256sum "$stored_file" | awk '{print $1}')

    if [[ "$stored_hash" != "$current_hash" ]]; then
      echo "[$TIMESTAMP] FILE MODIFIED: $stored_file" | tee -a "$ALERT_LOG"
      ALERTED=true
    fi
  done < "$BASELINE_FILE"

  if [[ "$ALERTED" == false ]]; then
    echo "No integrity violations detected."
  fi
}

# Main logic
if [[ ! -f "$BASELINE_FILE" ]]; then
  create_baseline
else
  check_integrity
fi
