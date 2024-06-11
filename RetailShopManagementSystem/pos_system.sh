#!/bin/bash

# Inventory file
INVENTORY_FILE="inventory.txt"

# Function to display inventory
display_inventory() {
    echo "Inventory:"
    cat "$INVENTORY_FILE"
}

# Main function
main() {
    display_inventory
}

# Call main function
main