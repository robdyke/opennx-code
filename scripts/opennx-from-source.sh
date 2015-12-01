#! /bin/sh

# Neova Health
# Helper script to install compile openNX from source
# Run with sudo

set -ae

# Script variables
SCRIPT_NAME="${0##*/}"
SCRIPT_DIR="$(cd ${0%/*} ; pwd)"
ROOT_DIR="$PWD"
OUT_DIR="opennx"

# VARS
MIRROR=https://github.com/robdyke/opennx-code/archive/master.zip

# Build-essential
sudo apt-get install build-essential automake -y

# Install deps
apt-get install -y libwxgtk2.8-dev libsmbclient-dev libcups2-dev libx11-dev libxmu-dev

# Create and Switch to temp dir
mkdir -p ${OUT_DIR} && cd ${OUT_DIR}

# Get SRV
wget $MIRROR

# Extract Source
unzip master.zip

# Switch dir
cd opennx-code-master

# Build from source
./configure
make
#make install

# Clean up
cd ${ROOT_DIR}
rm -rf ${OUT_DIR}

# Fix the lib64 linking badness
cd /usr/lib/opennx && ln -snf lib lib64

# Done
cd ${ROOT_DIR}
echo -e "INFO: Done."
echo

exit 0
