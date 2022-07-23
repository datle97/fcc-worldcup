#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# Truncate tables
$PSQL "TRUNCATE teams, games;"

INDEX_TEAM=0
cat games.csv | while IFS=','  read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS;
do
  if [[ $INDEX_TEAM > 0 ]]
  then
    # Insert teams
    CHECK_NAME_WINNER=$($PSQL "SELECT name FROM teams WHERE name='$WINNER';")
    CHECK_NAME_OPPONENT=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT';")
    if [[ -z $CHECK_NAME_WINNER ]]
    then
      INSERT_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")
      echo $INSERT_NAME
    elif [[ -z $CHECK_NAME_OPPONENT ]]
    then
      INSERT_ROW=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")
      echo $INSERT_NAME
    fi
  fi
  (( INDEX_TEAM++ ))
done


INDEX_GAME=0
cat games.csv | while IFS=','  read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS;
do
  if [[ $INDEX_GAME > 0 ]]
  then
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
    echo "$WINNER_ID $OPPONENT_ID"
    if [[ $WINNER_ID && $OPPONENT_ID ]]
    then
      echo 
      INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS);")
      echo $INSERT_GAME
    fi
  fi
  (( INDEX_GAME++ ))
done