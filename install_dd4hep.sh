#!/bin/bash
# DD4hep Installation Script for lxplus

# Author: Muhammad Saiel
# Date: 08-05-2025

set -e  # Exit immediately if a command exits with a non-zero status

# Define installation directories
export WORK_DIR=~/dd4hep
export DD4HEP_DIR=$WORK_DIR/DD4hep
export DD4HEP_INSTALL=$WORK_DIR/DD4hep-install

# Create working directory
mkdir -p "$WORK_DIR"
cd "$WORK_DIR"

# Source Key4HEP environment
source /cvmfs/sw.hsf.org/key4hep/setup.sh

# Clone DD4hep repository
git clone https://github.com/AIDASoft/DD4hep.git
mkdir -p "$DD4HEP_DIR/build"
cd "$DD4HEP_DIR/build"

# Configure and build DD4hep
cmake .. \
  -DCMAKE_INSTALL_PREFIX="$DD4HEP_INSTALL" \
  -DDD4HEP_USE_GEANT4=ON \
  -DDD4HEP_USE_LCIO=ON
make -j$(nproc)
make install

echo "DD4hep installation completed successfully."

