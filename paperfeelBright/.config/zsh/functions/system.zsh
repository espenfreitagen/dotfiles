#-----------------------------------------------------------------------------------------------
# SYSTEM
#-----------------------------------------------------------------------------------------------
# cd into a .config folder
cdx() {
  local folder="$1"
  cd ~/.config/$folder 
}

# userConfig in sudo
snv() {
  sudo -E HOME="$HOME" nvim "$@"
}

# Add entry to /etc/hosts if not already present
hostadd() {
  local ip="$1"
  local domain="$2"
  
  if [[ -z "$ip" || -z "$domain" ]]; then
    echo "Usage: host_add <ip> <domain>"
    return 1
  fi

  if grep -qE "$ip|$domain" /etc/hosts; then
    echo "Entry already exists: $ip $domain"
    return 0
  fi

  echo "Adding: $ip $domain to /etc/hosts"
  echo "$ip $domain" | sudo tee -a /etc/hosts > /dev/null
}
# Restore original hosts 
# !Permanent entries shoule be added in ~/Dev/hosts
#alias hostrestore='sudo cat ~/Dev/hosts > /etc/hosts'

hostrestore() {
  local src="$HOME/Dev/hosts"
  local dest="/etc/hosts"
  local backup="$HOME/Backups/"

  if [[ ! -f "$src" ]]; then
    echo "Missing: $src"
    return 1
  fi

  echo "Backing up current /etc/hosts"
  sudo cp "$dest" "$backup/hosts.bak.$(date +%s)"

  echo "Restoring from $src"
  sudo cp "$src" "$dest"
  echo "Done"
}
