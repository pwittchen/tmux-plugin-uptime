#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/helpers.sh"

print_uptime() {
  uptime | awk '{print $3}'|sed 's/,//'
}

main() {
  print_uptime
}

main
