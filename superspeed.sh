#!/usr/bin/env bash

# Colors

RED='\033[0;31m'

GREEN='\033[0;32m'

YELLOW='\033[0;33m'

BLUE='\033[0;34m'

PURPLE="\033[0;35m"

CYAN='\033[0;36m'

PLAIN='\033[0m'

# check root

[[ $EUID -ne 0 ]] && echo -e "${RED}Error:${PLAIN} This script must be run as root!" && exit 1

# check python

if  [ ! -e '/usr/bin/python' ]; then

		echo -e		read -p "${RED}Error:${PLAIN} python is not install. You must be install python command at first.\nDo you want to install? [y/n]" is_install

		if [[ ${is_install} == "y" || ${is_install} == "Y" ]]; then

			if [ "${release}" == "centos" ]; then

						yum -y install python

				else

						apt-get -y install python

				fi

		else

			exit

		fi

		

