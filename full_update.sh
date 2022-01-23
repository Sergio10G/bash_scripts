#!/bin/bash

sudo apt update
printf '%s\n' "---------------------------------------------------"
sudo apt upgrade
printf '%s\n' "---------------------------------------------------"
sudo apt autoremove
