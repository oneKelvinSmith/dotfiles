function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

    # For git prompt integration see:
    # https://fishshell.com/docs/current/cmds/fish_git_prompt.html

    if not test $last_status -eq 0
        set_color $fish_color_error
    else
	set_color $fish_pager_color_progress
    end

    echo -n '$ '
    set_color normal
end
