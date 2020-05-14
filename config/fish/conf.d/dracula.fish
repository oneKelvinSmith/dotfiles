set -l foreground f8f8f2
set -l selection  44475a
set -l comment    6272a4

set -l red    ff5555
set -l orange ffb86c
set -l yellow f4f99d
set -l green  50fa7b
set -l cyan   8be9fd
set -l pink   ff79c6
set -l purple bd93f9

set -g fish_color_autosuggestion  $selection
set -g fish_color_command         $pink
set -g fish_color_comment         $comment
set -g fish_color_cwd             $cyan
set -g fish_color_cwd_root        $red
set -g fish_color_end             $orange
set -g fish_color_error           $red
set -g fish_color_escape          $pink
set -g fish_color_history_current $orange
set -g fish_color_host            $purple
set -g fish_color_match           $green
set -g fish_color_normal          $foreground
set -g fish_color_operator        $pink
set -g fish_color_param           $foreground
set -g fish_color_quote           $yellow
set -g fish_color_redirection     $foreground
set -g fish_color_status          $purple
set -g fish_color_user -o         $orange
set -g fish_pager_color_progress  $green

set -g fish_color_search_match    --background=$selection
set -g fish_color_selection       --background=$selection
set -g fish_color_valid_path      # --underline
