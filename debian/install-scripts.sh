#!/bin/bash
if [ -z "$(git -v)" ]; then
	echo "Install git via \"sudo apt install git\""
fi
if [ "$(id -u)" -eq 0 ]; then
	echo "User-level install only. Do not run as root." >&2
	exit 1
fi
echo "checkpoint1"
#mv ./bin/* ~/.local/bin
