function code
  if count $argv > /dev/null
    set -l project (ls ~/Code | fzf -f $argv | head -1)
    if test $project
      cd ~/Code/(echo $project)
    else
      echo "No matching project found..."
    end
  else
    cd ~/Code
  end
end
