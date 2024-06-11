#!/bin/bash

# Inventory file
INVENTORY_FILE="inventory.txt"

# Function to display menu
display_menu() {
    echo "Inventory Management System"
    echo "1. Add Item"
    echo "2. Remove Item"
    echo "3. View Inventory"
    echo "4. Exit"
}

# Function to add item
add_item() {
    read -p "Enter item name: " item_name
    read -p "Enter quantity: " quantity
    echo "$item_name:$quantity" >> "$INVENTORY_FILE"
    echo "Item added successfully."
}

# Function to remove item
remove_item() {
    read -p "Enter item name to remove: " item_name
    sed -i "/^$item_name:/d" "$INVENTORY_FILE"
    echo "Item removed successfully."
}

# Function to view inventory
view_inventory() {
    echo "Inventory:"
    cat "$INVENTORY_FILE"
}

# Main loop
while true; do
    display_menu
    read -p "Enter your choice: " choice

    case $choice in
        1) add_item ;;
        2) remove_item ;;
        3) view_inventory ;;
        4) echo "Exiting..."; exit ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
done
