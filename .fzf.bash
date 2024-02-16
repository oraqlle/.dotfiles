# Setup fzf
# ---------
if [[ ! "$PATH" == */home/tyler/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/tyler/.fzf/bin"
fi

# Auto-completion
# ---------------
source "/home/tyler/.fzf/shell/completion.bash"

# Key bindings
# ------------
source "/home/tyler/.fzf/shell/key-bindings.bash"
