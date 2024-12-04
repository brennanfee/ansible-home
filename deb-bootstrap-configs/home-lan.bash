#!/usr/bin/env bash
# Author: Brennan A. Fee
# License: MIT License
#
# This script is intended to be used with the [Linux-Bootstraps](https://github.com/brennanfee/linux-bootstraps) deb-bootstrapper.bash script.  See the documentation there for usage.
#
# Short URL: https://tinyurl.com/brennan-home-lan-config
# Github URL: https://raw.githubusercontent.com/brennanfee/ansible-home/refs/heads/main/deb-bootstrap-configs/home-lan.bash
#

# Just in case the default ever changes
export AUTO_TIMEZONE="America/Chicago"

# Assume dual disk, single disk environments will detect the missing second drive and adjust automatically
export AUTO_SECOND_DISK="largest"

# For physical machines, I want the disks encrypted
export AUTO_ENCRYPT_DISKS=1

# AUTO_HOSTNAME should be the only manual export required at the command-line before running the install
export AUTO_DOMAIN="bfee.casa"

# User setup
export AUTO_ROOT_DISABLED=0
# shellcheck disable=SC2016
export AUTO_ROOT_PWD='$6$rcoTwXdyXxW3I2KD$peJuxoRaVgH7UB7fkCp/R5EPzMp6UYPXeWY3BEmILsdgkiBTgHxasFXkchQutAXd38Rt0K71MlB047GwhPuqe0'
export AUTO_CREATE_SERVICE_ACCT=1
# shellcheck disable=SC2016
export AUTO_SERVICE_ACCT_PWD='$6$S8a3CT7AKZbv7N8n$omZrWdwOQz2Y5T5g7PQHddVH0/OrMK3a.ae/QjCYoxwuOaOYSYwQxwqSeElPKUgGmmPv/hU27umCv2vNhgG.b/'
export AUTO_SERVICE_ACCT_SSH_KEY='ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAH5mZH2G4fD3f5ofopNdg1NfA4wE4ASwD4drU+w8RYR ansible@bfee.casa'
export AUTO_CREATE_USER=1
export AUTO_USERNAME="brennan"
# shellcheck disable=SC2016
export AUTO_USER_PWD='$6$o4EVECLkQ86Cfjh8$/.8IU/MiS2WSHH8J4q.3q8820bd2SnDMrRQWMr0QiC2HL06uVB5LRYNzFYE.T/ZrcRZwdS5sUBbVIS97nTsQs1'
export AUTO_USER_SSH_KEY='ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIfddRtRLofmAaLj6w3jTEBXrieMgD3+vKHwWipHi93G brennan@bfee.casa'

# Finally, in my personal machines I use a /data directory for "server" setups.
export AUTO_USE_DATA_DIR=1
