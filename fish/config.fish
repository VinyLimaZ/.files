if status is-interactive
    # Commands to run in interactive sessions can go here
end

fnm env --use-on-cd | source

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# Added by `rbenv init` on qui 15 jan 2026 13:24:21 -03
set -gx PATH $HOME/.rbenv/bin $PATH
status --is-interactive; and rbenv init - --no-rehash fish | source

#function fish_prompt
#  echo 'devburrooficial'
#   echo "\$ "
#end
fish_add_path $HOME/.local/bin
