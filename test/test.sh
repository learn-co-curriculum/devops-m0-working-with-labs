#!/bin/bash

# Store script output
output=()
while read -r line
do
  output+=("$(tr [A-Z] [a-z] <<< "$line")")
done < <(bash ../script.sh)

# Test every line
if [[ ${output[0]} == "hello" ]]
then
  lg -r p -m "First line is hello!"
else
  lg -r f -m "First line is not hello!" -e "Make sure your first line outputs hello." 
fi

if [[ ${output[1]} == "goodbye" ]]
then
  lg -r p -m "Second line is goodbye!"
else
  lg -r f -m "Second line is not goodbye!" -e "Make sure your second line outputs goodbye." 
fi
