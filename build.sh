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

