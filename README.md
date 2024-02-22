# .dotfiles

Start in your home directory

```zsh
cd ~
```

Clone .dotfiles repo into new hidden directory

```zsh
git clone --recurse-submodules -j2 <git@github.com:oraqlle/.dotfiles.git> ~/.dotfiles
```

## Create symlinks in the Home directory to the real files in the repo

```zsh
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.zshenv ~/.zshenv
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/starship.toml ~/.config/starship.toml
ln -s ~/.dotfiles/.fzf.bash ~/.fzf.bash
ln -s ~/.dotfiles/.fzf.zsh ~/.fzf.zsh
ln -s ~/.dotfiles/.tool-versions ~/.tool-versions
. ~/.zshrc
```

Upgrade Debian/Ubuntu packages

```zsh
sudo apt update;sudo apt upgrade -y
sudo apt install build-essential git zsh cmake gdb ninja-build
```

Set Shell to ZSH

```bash
chsh -s $(which zsh)
```

Install Rust

```zsh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

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

# vcpkg
cd ~
mkdir bin
cd bin
git clone https://github.com/Microsoft/vcpkg.git
./vcpkg/bootstrap-vcpkg.sh -disableMetrics
echo '\n# >>> vcpkg >>>\nexport VCPKG_ROOT="$HOME/bin/vcpkg"\nexport PATH="$VCPKG_ROOT:$PATH"\n# >>> vcpkg >>>\n' >> ~/.zshrc
. ~/.zshrc
```

Install OCaml

```zsh
bash -c "sh <(curl -fsSL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)"
opam init
opam install ocaml-lsp-server odoc ocamlformat utop
```

Install ASDF, Erlang VM and Elixir

```zsh
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
. ~/.zshrc
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf update
asdf plugin-update --all
asdf install
```

Install Go

```zsh
rm -rf /usr/local/go
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz
```

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
