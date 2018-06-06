function dev
  set -l directory ~/Development

  if count $argv > /dev/null
    set -l project (ls (echo $directory) | fzf -f $argv | head -1)

    if test $project
      cd (echo $directory)/(echo $project)
    else
      echo "No matching project found..."
    end
  else
    cd (echo $directory)
  end
end
