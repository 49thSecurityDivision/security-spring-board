#!/bin/bash

# Documentation can be found here https://github.com/deviantony/docker-elk
# Warning
echo -e "######################################\n"  \
	"#                                    #\n"  \
	"# Please be aware generated accounts #\n"  \
	"# Will now be printed to console.    #\n"  \
	"# PLEASE SAVE THIS INFORMATION!      #\n"  \
	"#                                    #\n"  \
	"######################################\n"

sleep 5

# Install ELK
git clone https://github.com/deviantony/docker-elk ~/docker-elk
cd ~/docker-elk
docker-compose up -d
echo -e "USERNAME:elastic\nPASSWORD:changeme\n"
