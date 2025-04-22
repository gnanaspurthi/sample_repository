#!/bin/bash
# this code contains the calculator app
#!/bin/bash

while true; do
  echo "---------------------------------"
  echo "   Shell Script Calculator App   "
  echo "---------------------------------"
  echo "Select an operation:"
  echo "1. Addition"
  echo "2. Subtraction"
  echo "3. Multiplication"
  echo "4. Division"
  echo "5. Exit"
  echo "Enter your choice (1-5):"
  read choice

  if [[ $choice -eq 5 ]]; then
    echo "Exiting... Goodbye!"
    break
  fi

  echo "Enter first number: "
  read num1
  echo "Enter second number: "
  read num2

  case $choice in
    1) result=$((num1 + num2))
       echo "Result: $result" ;;
    2) result=$((num1 - num2))
       echo "Result: $result" ;;
    3) result=$((num1 * num2))
       echo "Result: $result" ;;
    4) 
       if [[ $num2 -ne 0 ]]; then
         result=$((num1 / num2))
         echo "Result: $result"
       else
         echo "Error: Division by zero is not allowed!"
       fi ;;
    *)
       echo "Invalid choice! Please try again." ;;
  esac

  echo ""
done
