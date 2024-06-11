#!/bin/bash

# Configuration file
CONFIG_FILE="config.txt"

# Function to display menu
display_menu() {
    echo "Setting Configuration"
    echo "1. Set Database Host"
    echo "2. Set Database User"
    echo "3. Set Database Password"
    echo "4. Save Configuration"
    echo "5. Exit"
}

# Function to set database host
set_database_host() {
    read -p "Enter database host: " db_host
    DATABASE_HOST="$db_host"
    echo "Database host set to: $DATABASE_HOST"
}

# Function to set database user
set_database_user() {
    read -p "Enter database user: " db_user
    DATABASE_USER="$db_user"
    echo "Database user set to: $DATABASE_USER"
}

# Function to set database password
set_database_password() {
    read -p "Enter database password: " db_password
    DATABASE_PASSWORD="$db_password"
    echo "Database password set."
}

# Function to save configuration to file
save_configuration() {
    echo "DATABASE_HOST=$DATABASE_HOST" > "$CONFIG_FILE"
    echo "DATABASE_USER=$DATABASE_USER" >> "$CONFIG_FILE"
    echo "DATABASE_PASSWORD=$DATABASE_PASSWORD" >> "$CONFIG_FILE"
    echo "Configuration saved to $CONFIG_FILE"
}

# Main loop
while true; do
    display_menu
    read -p "Enter your choice: " choice

    case $choice in
        1) set_database_host ;;
        2) set_database_user ;;
        3) set_database_password ;;
        4) save_configuration ;;
        5) echo "Exiting..."; exit ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
done