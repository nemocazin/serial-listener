#!/bin/bash

#
# @brief     File to install al the lib and necessaries to use the code
# 
# @author    CAZIN Némo
# @date      2024
# 

# Colors (ANSI)
BLUE='\033[0;34m'
CYAN='\033[0;36m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RESET='\033[0m'

#!* BEFORE INSTALL ###########################################

# Create directories if they doesn't exist
mkdir -p logs
chmod 777 logs/

# Redirect stdout and stderr to log/log_install
exec > >(tee -a logs/install.log) 2>&1



#!* UPDATE PACKAGES ##########################################
echo -e "${CYAN}Updating package lists..."
apt-get update
echo -e "${GREEN}Update done.${RESET}"
##############################################################




#!* INSTALL PYTHON3 ##########################################
echo -e "${CYAN}Installing python3...${RESET}"
apt install -y python3

# Verification of the install
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Python3 has been installed sucessfully.${RESET}"
else
    echo -e "${RED}Python3 installation failed.${RESET}"
    exit 1
fi
##############################################################




#!* INSTALL PIP ##############################################
echo -e "${CYAN}Installing pip...${RESET}"
apt install -y python3-pip

# Verification of the install
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Pip has been installed sucessfully.${RESET}"
else
    echo -e "${RED}Pip installation failed.${RESET}"
    exit 1
fi
##############################################################




#!* INSTALL PYTHON LIBRAIRIES ################################
echo -e "${CYAN}Installing python librairies...${RESET}"
pip install pyserial

# Verification of the install
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Python librairies have been installed sucessfully.${RESET}"
else
    echo -e "${RED}Python librairies installations failed.${RESET}"
    exit 1
fi
##############################################################

echo -e "${BLUE}Installation script completed.${RESET}"