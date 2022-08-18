#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
$($PSQL "\COPY games(year,round,winner,opponent,winner_goals,opponent_goals) FROM 'games.csv' DELIMITER ',' CSV HEADER;")
$($PSQL "\COPY teams(name) FROM 'teams.csv' DELIMITER ',' CSV HEADER;")
