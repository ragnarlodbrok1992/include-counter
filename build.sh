#!/bin/bash

set -e

log() {
  echo "LOG: $1"
  echo ""
}

ghc main.hs
log "No command line args"
./main

log "Command line args - build script"
./main build.sh

log "Command line args - linux kernel source file"
./main copied_src/procacct.c

# log "Wrong argument"
# ./main copied_src/some_not_existing_file.hpp

