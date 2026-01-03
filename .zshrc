# ZSH HOME
export ZSH=$HOME/.dotfiles

## Lines configured by zsh-newuser-install
HISTFILE=$HOME/.zsh_history
HISTSIZE=5000
SAVEHIST=10000

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS

# Share History
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Keybinds
bindkey -e  # Emacs keybinds in shell
bindkey '^ ' autosuggest-accept

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/oraqlle/.zshrc'

export EDITOR="nvim"
export COLORTERM=truecolor

# OMZ Keybindings
#source $ZSH/omz-keybindings.zsh

# Aliases
alias fzf-bat="fzf --preview 'bat --color=always {}'"

# Initialise Starship
#eval "$(starship init zsh)"

# Plugins
# zsh-autosuggestions
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# ZSH Completions
# zsh-completions
fpath=($ZSH/plugins/zsh-completions/src $fpath)
# rm -f ~/.zcompdump; compinit

fpath+=~/.zfunc

autoload -Uz compinit
compinit
# End of lines added by compinstall
