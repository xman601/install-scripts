#!/bin/bash

if command -v pacman >/dev/null 2>&1; then pkgmgr="pacman"
elif command -v apt >/dev/null 2>&1; then pkgmgr="apt"
elif command -v dnf >/dev/null 2>&1; then pkgmgr="dnf"
elif command -v yum >/dev/null 2>&1; then pkgmgr="yum"
elif command -v zypper >/dev/null 2>&1; then pkgmgr="zypper"
elif command -v apk >/dev/null 2>&1; then pkgmgr="apk"
else pkgmgr="unknown"
fi


# Install Neovim

curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.appimage

chmod u+x nvim-linux-x86_64.appimage

sudo mv nvim-linux-x86_64.appimage /usr/local/bin/nvim

# end of Neovim install

# Setting up Neovim with my config
 
sudo $pkgmgr install stow git

git clone git@github.com:xman601/dotfiles.git ~/.dotfiles

cd ~/.dotfiles

stow nvim

# End of Neovim Setup
