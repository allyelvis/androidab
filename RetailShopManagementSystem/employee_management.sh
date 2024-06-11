#!/bin/bash

# File to store employee data
EMPLOYEE_FILE="employees.txt"

# Function to add employee
add_employee() {
    echo "Add New Employee"
    read -p "Enter employee ID: " employee_id
    read -p "Enter employee name: " employee_name
    read -p "Enter employee position: " employee_position

    echo "$employee_id:$employee_name:$employee_position" >> "$EMPLOYEE_FILE"
    echo "Employee added successfully."
}

# Main function
main() {
    add_employee
}

# Call main function
main