
current_time=$(date "+%Y-%m-%d %H:%M:%S")


github_username=$GITHUB_ACTOR

if [ ! -f log.txt ]; then
  echo "Log file created at $current_time by $github_username" > log.txt
else
  update_count=$(wc -l < log.txt)
  echo "Log update #$update_count: $current_time by $github_username" >> log.txt
fi
