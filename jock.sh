#!/bin/bash

while true; do
    # Send a GET request to the joke API
    echo "Fetching a new joke for you..."

    # Simulate loading
    echo -n "Loading"
    for i in {1..3}
    do
        echo -n "."
        sleep 1
    done
    echo ""

    response=$(curl -s "https://official-joke-api.appspot.com/random_joke")

    # Parse the setup and punchline from the JSON response
    setup=$(echo $response | jq -r '.setup')
    punchline=$(echo $response | jq -r '.punchline')

    # Print the setup
    echo "$setup"

    # Let the user guess the punchline
    read -p "guess " guess

    # Check if the user's guess matches the punchline
    if [[ $guess == $punchline ]]; then
        echo "Hey, you got it!"
    else
        echo "Nah, $punchline"
    fi

    # Ask the user if they want another joke
    read -p "Oh, you want another one? (yes/no) " answer

    # If the user's answer is not 'yes', break the loop
    if [[ $answer != "yes" ]]; then
        break
    fi
done