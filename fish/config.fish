if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

# pnpm
set -gx PNPM_HOME "/home/diego/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end


bind ctrl-x "goto.sh"
bind ctrl-n "edit.sh"

alias n="nvim ."
