#!/usr/bin/bash
function update
{
	sudo apt update && sudo apt -y full-upgrade -y && sudo reboot
}
function oldcard
{
	sudo apt-get install nvidia-legacy-390xx-driver
	sudo apt-get install nvidia-legacy-390xx-smi
	sudo apt-get install nvidia-legacy-390xx-opencl-icd
}

function newcard
{
	apt-get install nvidia-driver
	apt-get install nvidia-smi
	apt-get install nvidia-opencl-icd
}

function reboot
{
	sudo reboot
}


msg1="Starting Nvidia Driver install for 755m"
msg2="Rebooting"


sleep 3
clear

echo $msg1
oldcard
echo $msg2
reboot
