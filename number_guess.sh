#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

echo "Enter your username:"
read NAME
USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$NAME'")

if [[ -z $USER_ID ]]
then
  # If the username has not been used before, you should print Welcome, <username>! It looks like this is your first time here.
  INSERT_NEW_PLAYER=$($PSQL "INSERT INTO users(name) VALUES ('$NAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$NAME'")
  echo -e "\nWelcome, $NAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID")
  BEST_GAME=$($PSQL "SELECT min(guesses) FROM games WHERE user_id = $USER_ID")
  echo $GAMES_PLAYED
  echo -e "\nWelcome back, ${NAME}! You have played ${GAMES_PLAYED} games, and your best game took ${BEST_GAME} guesses."
fi

  INSERT_NEW_GAME=$($PSQL "INSERT INTO games(user_id) VALUES ('$USER_ID')")
  NEW_GAME_ID=$($PSQL "SELECT max(game_id) FROM games WHERE user_id = $USER_ID")

RANDOM_NUMBER=$(shuf -i 1-1000 -n 1)
echo $RANDOM_NUMBER

echo -e "\nGuess the secret number between 1 and 1000:"
read GUESS

TRIES=1
while [ $GUESS != $RANDOM_NUMBER ]
do    
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
    read GUESS
  else 
    if [[ $GUESS -gt $RANDOM_NUMBER ]] 
    then
      echo "It's lower than that, guess again:"
      read GUESS
    else
      echo "It's higher than that, guess again:"
      read GUESS
    fi
  fi
  ((TRIES++))
done

UPDATE_TRIES=$($PSQL "UPDATE games SET guesses=$TRIES WHERE game_id=$NEW_GAME_ID")
echo "You guessed it in $TRIES tries. The secret number was $RANDOM_NUMBER. Nice job!"

