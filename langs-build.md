LLVM

```zsh
# LLVM install (Debian/Ubuntu)
wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh <version number>
# or ...
sudo ./llvm.sh all

OCaml

```zsh
bash -c "sh <(curl -fsSL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)"
opam init
opam install ocaml-lsp-server odoc ocamlformat utop
```

ASDF, Erlang VM and Elixir

```zsh
sudo dnf install ncurses-devel
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
. ~/.zshrc
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf update
asdf plugin-update --all
asdf install
```

Go

```zsh
rm -rf /usr/local/go
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz
```

Zig and ZLS

```zsh
# Master Toolchain
cd ~/binaries
git clone git@github.com:ziglang/zig.git zig-src
cd zig-src
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make install -j8

cd ~/binaries
git clone git@github.com:zigtools/zls.git
cd zls
zig build -Doptimize=ReleaseSafe
```
