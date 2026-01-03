# .dotfiles

Clone .dotfiles repo into new hidden directory

```zsh
git clone --recurse-submodules -j2 git@github.com:oraqlle/.dotfiles.git ~/.dotfiles
```

## Packages (*pacman*)

* `pacman_essentials.txt`
* `pacman_tools.txt`
* `pacman_desktop.txt`
* `pacman_applications.txt`
* `pacman_optional.txt`

## Create symlinks

```zsh
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/ghostty-config ~/.config/ghostty/config
ln -s ~/.dotfiles/starship.toml ~/.config/starship.toml
```

Set Shell to ZSH

```bash
chsh -s $(which zsh)
```

Neovim

```zsh
git clone git@github.com:oraqlle/nvim.git ~/.config/nvim
```

Starship

```zsh
curl -sS https://starship.rs/install.sh | sh
```
