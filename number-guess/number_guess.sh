#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\n~~~ Number Guessing Game ~~~\n"

echo -n -e "\nEnter your username: "
read USERNAME

GET_USER=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")

# if doesn't exist
if [[ -z $GET_USER ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  # add user to table
  NUM_GAMES=1
  BEST_GAME=1000
  ADD_USER=$($PSQL "INSERT INTO users(username, num_games, best_game) VALUES('$USERNAME', $NUM_GAMES, $BEST_GAME)")
else
  NUM_GAMES=$($PSQL "SELECT num_games FROM users WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username='$USERNAME'")
  echo -e "\nWelcome back, $USERNAME! You have played $NUM_GAMES games, and your best game took $BEST_GAME guesses."
  # update game data
  UPDATE_GAME_NUM=$($PSQL "UPDATE users SET num_games=num_games+1 WHERE username='$USERNAME'")
fi

RANDNUM=$((RANDOM % 1000 + 1))

GET_GUESS(){
  if ! [[ $1 ]]
  then
    echo -n -e "\nGuess the secret number between 1 and 1000: "
  else
    echo -n -e "\n$1"
  fi
  read GUESS
  UPDATE_GAME=$($PSQL "UPDATE current_game SET guess_num=guess_num+1")
}

UPDATE_GAME=$($PSQL "UPDATE current_game SET guess_num=0")
GET_GUESS

while [[ $GUESS != $RANDNUM ]]
do
  # if input not integer
  if ! [[ $GUESS =~ ^[0-9]+$ ]]
  then
    GET_GUESS "That is not an integer, guess again: "
  # if lower
  elif [[ $GUESS > $RANDNUM ]]
  then
    GET_GUESS "It's lower than that, guess again: "
  # if higher
  else
    GET_GUESS "It's higher than that, guess again: "
  fi
done

# get number of tries and update best game
NUM_TRIES=$($PSQL "SELECT guess_num FROM current_game")

if [[ $NUM_TRIES -lt $BEST_GAME ]]
then
  UPDATE_BEST_GAME=$($PSQL "UPDATE users SET best_game=$NUM_TRIES WHERE username='$USERNAME'")
fi

echo -e "\nYou guessed it in $NUM_TRIES tries. The secret number was $RANDNUM. Nice job!"
