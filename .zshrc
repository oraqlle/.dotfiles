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

# >>> vcpkg >>>
export VCPKG_ROOT="$HOME/bin/vcpkg"
export PATH="$VCPKG_ROOT:$PATH"
# <<< vcpkg <<<

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
# Go paths
export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

# Local binaries
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin/CBQN:$PATH"

# Custom GCC binary
export PATH="/usr/local/gcc-14.0.0/bin:$PATH"

# Custom Neovim binary
export PATH="$HOME/bin/neovim/bin/bin:$PATH"

# Custom Lua binary
export PATH="$HOME/bin/lua-5.4.6/src:$PATH"

# Custom Julia binary
export PATH="$HOME/bin/julia-1.8.1/bin:$PATH"

export COLORTERM=truecolor

export JAVA_HOME=$(dirname $(readlink -f $(which java)))

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

autoload -Uz compinit
compinit
# End of lines added by compinstall
