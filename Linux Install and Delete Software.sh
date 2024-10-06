#!/bin/bash
echo 'Linux Install and Delete Software.sh'

# Update the package list
echo "Updating package list..."
sudo apt update -y

while true
do
    echo "1. Install software"
    echo "2. Uninstall software"
    echo "3. Uninstall software with no trace"
    echo "4. Exit Menu"
    read -p "Enter your choice: " choice

    # Case statement for multiple choices
    case $choice in
        1)
            echo "Install software"
            read -p "What software do you want to install? " software
            sudo apt install $software -y
        ;;
        2)
            echo "Uninstall software"
            read -p "What software do you want to uninstall? " software
            sudo apt remove $software -y
        ;;
        3)
            echo "Uninstall software with no trace"
            read -p "What software do you want to uninstall with no trace? " software
            sudo apt purge $software -y
        ;;
        4)
            echo "Exiting the system. Goodbye!"
            exit
        ;;
        *)
            echo "Invalid option. Please try again."
        ;;
    esac
done
