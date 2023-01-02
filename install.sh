#!/bin/sh

# -e: exit on error
# -u: exit on unset variables
set -eu

log_color() {
  color_code="$1"
  shift

  printf "\033[${color_code}m%s\033[0m\n" "$*" >&2
}

log_task() {
  log_color "0;34" "🔃" "$@"
}

log_task "Executando script de https://raw.githubusercontent.com/schleuss/setup-machine/main/install.sh"
curl -fSsL https://raw.githubusercontent.com/schleuss/setup-machine/main/install.sh | sh
