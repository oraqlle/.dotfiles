# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1200
SAVEHIST=1200

# bindkey -e  # Emacs keybinds in shell
# bindkey -v  # Vim keybinds in shell

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tyler/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Initialise Starship
eval "$(starship init zsh)"

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
export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin/CBQN:$PATH"
export PATH="/usr/local/gcc-14.0.0/bin:$PATH"
export PATH="$HOME/bin/neovim/bin/bin:$PATH"
export PATH="$HOME/bin/lua-5.4.6/src:$PATH"

export PATH="$HOME/bin/julia-1.8.1/bin:$PATH"

export COLORTERM=truecolor

export JAVA_HOME=$(dirname $(readlink -f $(which java)))
