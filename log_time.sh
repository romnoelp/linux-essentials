#!/bin/bash

current_time=$(date "+%Y-%m-%d %H:%M:%S")

github_username=$GITHUB_ACTOR

if [ ! -f log.txt ]; then
  echo "Log file created at $current_time by $github_username" > log.txt
else
  update_count=$(grep -c 'Logged by' log.txt)
  echo "Log update #$update_count: $current_time by $github_username" >> log.txt
fi

echo "Logged by: $github_username at $current_time" >> log.txt
echo "The log has been updated $update_count times." >> log.txt
