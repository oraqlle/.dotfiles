# .dotfiles

Start in your home directory

```zsh
cd ~
```

Clone .dotfiles repo into new hidden directory

```zsh
git clone <git@github.com:oraqlle/.dotfiles.git> ~/.dotfiles
```

## Create symlinks in the Home directory to the real files in the repo

```zsh
ln -s ~/.dotfiles/.zsh ~/.zsh
ln -s ~/.dotfiles/.zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.zsh/.zshenv ~/.zshenv
ln -s ~/.dotfiles/.profile ~/.profile
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/starship.toml ~/.config/starship.toml
ln -s ~/.dotfiles/.bashrc ~/.bashrc
ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases
ln -s ~/.dotfiles/.fzf.bash ~/.fzf.bash
ln -s ~/.dotfiles/.fzf.zsh ~/.fzf.zsh
. ~/.zshrc
```

Upgrade Debian/Ubuntu packages

```zsh
sudo apt update;sudo apt upgrade -y
sudo apt install build-essentials git zsh 
```

Set Shell to ZSH

```bash
chsh -s $(which zsh)
```

Install Rust

~

Install Tools and Packages from Cargo

```zsh
cargo install starship --locked
cargo install eza --locked
cargo install zoxide --locked
cargo install bat --locked
```

Config Neovim

```zsh
cd ~/.config
git clone git@github.com:oraqlle/nvim.git
```

Install C++ toolchains

```zsh
# LLVM install
wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh <version number>
# or ...
sudo ./llvm.sh all
```

Install OCaml

~

Install ASDF, Erlang VM and Elixir

~

Install Go

~

Install tmux

~

## Instructions left to write

- Base packages from APT
- Install Rust
- Install tools and packages from Cargo
  - starship (shell prompt)
  - eza
  - zoxide
  - bat
- Neovim configure from Git repo
- C++ Toolchains
  - GCC
  - Clang
  - CMake
  - Make
  - Ninja
  - vcpkg
- Install OCaml
- Install ASDF and Elixir Components
- Install Go
- Install tmux
