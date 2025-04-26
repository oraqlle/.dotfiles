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
# bindkey -v  # Vim keybinds in shell
bindkey '^ ' autosuggest-accept

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tyler/.zshrc'

# OMZ Keybindings
source $ZSH/omz-keybindings.zsh

# Plugins
# zsh-autosuggestions
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Aliases
alias fzf="fzf --preview 'bat --color=always {}'"
alias ezal="eza -l"
alias ezaa="eza -a"
alias ezala="eza -la"
alias txat="tmux attach -t"

# opam configuration
[[ ! -r /home/tyler/.opam/opam-init/init.zsh ]] || source /home/tyler/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

export ASDF_DIR="$HOME/.asdf"
. "$HOME/.asdf/asdf.sh"

# >>> xmake >>>
test -f "/home/tyler/.xmake/profile" && source "/home/tyler/.xmake/profile"
# <<< xmake <<<

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias cp-rjs="cp -r file://$HOME/bin/reveal.js"

# User Variable Exports

# Editor
export EDITOR="nvim"

# >>> vcpkg >>>
export VCPKG_ROOT="$HOME/bin/vcpkg"
export PATH="$VCPKG_ROOT:$PATH"
# <<< vcpkg <<<

# Go paths
export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

# Local binaries
export PATH="$HOME/.local/bin:$PATH"

# CBQN
export PATH="$HOME/bin/CBQN:$PATH"

# Custom GCC binary
export PATH="/usr/local/gcc-14.0.0/bin:$PATH"

# Custom Neovim binary
export PATH="$HOME/bin/neovim/bin/bin:$PATH"

# Custom Lua binary
export PATH="$HOME/bin/lua-5.4.6/src:$PATH"

# Custom Julia binary
export PATH="$HOME/bin/julia-1.8.1/bin:$PATH"

# Zig Binaries
alias zig-master="$HOME/bin/zig-src/build/stage3/bin/zig"
export PATH="$HOME/bin/zigmod/zig-out/bin:$PATH"
# export PATH="$HOME/bin/zigup/zig-out/bin:$PATH"

export COLORTERM=truecolor

export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Initialise Starship
eval "$(starship init zsh)"

# Initialise Zoxide
eval "$(zoxide init zsh)"

# ZSH Completions
# zsh-completions
fpath=($ZSH/plugins/zsh-completions/src $fpath)
# rm -f ~/.zcompdump; compinit

# asdf zsh completions
fpath=(${ASDF_DIR}/completions $fpath)

# conda (University)
# export PATH="$HOME/anaconda3/bin:$PATH"  # commented out by conda initialize

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/tyler/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/tyler/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/tyler/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/tyler/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

[ -f "/home/tyler/.ghcup/env" ] && . "/home/tyler/.ghcup/env" # ghcup-env

fpath+=~/.zfunc

autoload -Uz compinit
compinit
# End of lines added by compinstall

