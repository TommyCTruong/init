#!/bin/sh

#read -p 'Enter password: ' pass

ccrypt -d keys.tar.gz.cpt
#kopenssl enc -in id.tar.gz.enc -out id.tar.gz -d -aes-256-cbc -salt -pass "pass:${pass}" -pbkdf2
sleep 2
tar xvfz keys.tar.gz

sleep 2

cp id_r* authorized_keys ~/.ssh

rm id_r* authorized_keys

ccrypt -e keys.tar.gz
#rm id.tar.gz id_r*
#sudo pacman -S openssh chezmoi --needed --noconfirm
#sudo systemctl --now enable sshd

#chezmoi init --apply git@github.com:tommyctruong/dotfiles.git

#sleep 10

#~/.zsh/scripts/install_pacman.sh
