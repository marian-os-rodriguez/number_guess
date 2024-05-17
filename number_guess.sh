#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

random_number=$(( ( RANDOM % 1000 ) + 1 ))

echo "Enter your username:"
read username_input
database_username=$($PSQL "select count(*), MIN(number_guess) from games where username='$username_input'")
IFS="|"
read -r games_played best_game <<< $database_username
if [[ $games_played -eq 0 ]]; then
   echo "Welcome, $username_input! It looks like this is your first time here."
else
    echo "Welcome back, $username_input! You have played $games_played games, and your best game took $best_game guesses."
fi
true=1
count=0
echo "Guess the secret number between 1 and 1000:"
while [[ $true -eq 1 ]]; do
    read number_guess
    ((count++))
    if [[ "$number_guess" =~ ^[0-9]+$ ]]; then
        if [ "$random_number" -gt "$number_guess" ]; then
           echo "It's higher than that, guess again:"
        elif [ "$random_number" -lt "$number_guess" ]; then
           echo "It's lower than that, guess again:"
        else
            psql --username=freecodecamp --dbname=number_guess --no-align -c "INSERT INTO games(username,number_guess) VALUES('$username_input',$count)" > output
            true=0
            echo "You guessed it in $count tries. The secret number was $random_number. Nice job!"
        fi
    else
        echo "That is not an integer, guess again:"
    fi  
done
    