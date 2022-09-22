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

git save

git done

sudo apt install curl

sh -c "$(curl -fsLS https://chezmoi.io/get)"

export PATH=$PATH:~/bin

curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get

curl -sS https://starship.rs/install.sh | sh

~/.zsh/scripts/install_ubuntu.sh

~/.zsh/scripts/install_deb_get.sh

#~/.zsh/scripts/install_pacman.sh

# curl -LO https://github.com/wez/wezterm/releases/download/nightly/wezterm-nightly.Ubuntu22.04.deb && sudo apt install -y ./wezterm-nightly.Ubuntu22.04.deb

#sudo pacman -S openssh chezmoi --needed --noconfirm

#sudo systemctl --now enable sshd

#chezmoi init --apply git@github.com:tommyctruong/dotfiles.git

#sleep 10

#~/.zsh/scripts/install_pacman.sh
