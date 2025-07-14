### Aritwoth's Editor

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get more information.

#### 1. Install Neovim

##### Linux

```
wget ​​https://github.com/neovim/neovim-releases/releases/download/v0.11.2/nvim-linux-x86_64.appimage
cp nvim-linux-x86_64.appimage /usr/bin/nvim
chmod 755 /usr/bin/nvim
```

For Windows and Mac OS, refer the [Neovim page](https://github.com/neovim/neovim/releases/)

#### 2. Copy this config

```
git clone https://github.com/irijije/lazyvim-conf.git ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

#### 3. (Optional) Install nerd font to display icon correctly

[nerdfonts.com](https://www.nerdfonts.com/font-downloads)

#### 4. (Optional) Clipboard setting

##### Remote connection via SSH

Require osc52 feature for your terminal. Tested on [Alacritty](https://github.com/alacritty/alacritty) 0.15.1.

##### Tmux

add lines in `~/.tmux.conf`

```
set-option -g set-clipboard on
set-option -sa terminal-features ",*256color*:XT"
```
