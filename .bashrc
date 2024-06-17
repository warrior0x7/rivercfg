# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ----------------------------
# SOURCING EXTENSIONS
# ----------------------------
. "$HOME/bash/prompt"
. "$HOME/bash/aliases"
. "$HOME/bash/variables"
. "$HOME/.local/lib/xlotus/xlfns"

# ----------------------------
# AUTOSTART TMUX UPON LAUNCH
# ----------------------------
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then

    # See if there are detached sessions and if there are, kill them
    detached_tmux=`tmux list-sessions -F '#{session_attached} #{session_id}' | awk '/^0/{print $2}'`
    if [ -n "$detached_tmux" ]; then
		echo $detached_tmux | xargs -n 1 tmux kill-session -t 
	fi

  	exec tmux

fi


# ----------------------------
# VARIABLES
# ----------------------------
export PATH="$PATH:$HOME/.local/bin"
export MANPAGER="nvim +Man!"
export EDITOR="nvim"
alias je="xl-jump --edit"
alias j=". xl-jump --jump"
