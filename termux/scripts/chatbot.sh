#!/bin/bash

# AI Assistant
echo "Hello! I am your AI assistant. How can I assist you today?"

while true; do
  # Prompt for user input
  read -p "You: " user_input

  # Convert user input to lowercase for case-insensitive matching
  user_input_lower=$(echo "$user_input" | tr '[:upper:]' '[:lower:]')

  # Check user input and respond
  case $user_input_lower in
    "hello" | "hi")
      echo "AI Assistant: Hello! How can I help you?"
      ;;
    "what is your name?")
      echo "AI Assistant: I am your AI assistant."
      ;;
    "date" | "what is the date today?")
      current_date=$(date +'%A, %B %d, %Y')
      echo "AI Assistant: Today is $current_date."
      ;;
    "time" | "what is the time now?")
      current_time=$(date +'%r')
      echo "AI Assistant: The current time is $current_time."
      ;;
    "exit" | "quit")
      echo "AI Assistant: Goodbye!"
      exit 0
      ;;
    *)
      echo "AI Assistant: I'm sorry, I don't understand that. Please ask another question or type 'exit' to quit."
      ;;
  esac
done