#!/bin/bash

# Install ansible
if ! hash ansible > /dev/null 2>&1; then
    echo "Installing Ansible..."
    sudo pacman -Sy ansible
else
    echo "Ansible found"
fi

# Dependencies
echo "Installing dependencies..."
ansible-galaxy install kewlfft.aur

# Ask device
PS3='Select device: '
options=("Desktop" "Laptop" "Work" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Desktop")
            break
            ;;
        "Laptop")
            break
            ;;
        "Work")
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "Invalid option $REPLY";;
    esac
done

# Execute playbook
echo 'Executing playbook...'
ansible-playbook ${opt,,}.yml --ask-become-pass

