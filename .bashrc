# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ----------------------------
# SOURCING EXTENSIONS
# ----------------------------
source ~/bash/prompt
source ~/bash/aliases
source ~/bash/variables

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
	if [ -z "$detached_tmux" ]; then 
		detached_tmux=`tmux list-sessions -F '#{session_attached} #{session_id}' | awk '/^0/{print $2}'`
	fi

	if [ ! -z "$detached_tmux" ]; then 
		echo $detached_tmux | xargs -n 1 tmux kill-session -t 
	fi

  	exec tmux
fi

