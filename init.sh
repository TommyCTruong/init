#!/bin/sh

read -p 'Enter password: ' pass

openssl enc -in id.tar.gz.enc -out id.tar.gz -d -aes-256-cbc -salt -pass "pass:${pass}" -pbkdf2

tar xvfz id.tar.gz

sleep 2

cp id_r* ~/.ssh

sudo pacman -S openssh chezmoi --needed --noconfirm
sudo systemctl --now enable sshd

chezmoi init --apply https://github.com/tommyctruong/dotfiles.git

sleep 10

~/.zsh/scripts/install_pacman.sh
