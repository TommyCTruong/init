#!/bin/sh

#read -p 'Enter password: ' pass
sudo pacman -S --noconfirm --needed lsd neovim chezmoi zsh starship thefuck zoxide
chsh -s /bin/zsh
yay ccrypt --noconfirm --needed
cp keys.tar.gz.cpt keys2.tar.gz.cpt
ccrypt -d keys2.tar.gz.cpt
sleep 2
tar xvfz keys2.tar.gz

sleep 2

cp id_r* authorized_keys ~/.ssh

rm id_r* authorized_keys
rm keys2.tar.gz



chezmoi init --apply https://github.com/tommyctruong/dotfiles.git

#sudo apt install curl

#sh -c "$(curl -fsLS https://chezmoi.io/get)"

export PATH=$PATH:~/bin

#curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get

#curl -sS https://starship.rs/install.sh | sh

#~/.zsh/scripts/install_ubuntu.sh

#~/.zsh/scripts/install_deb_get.sh

#~/.zsh/scripts/install_pacman.sh

# curl -LO https://github.com/wez/wezterm/releases/download/nightly/wezterm-nightly.Ubuntu22.04.deb && sudo apt install -y ./wezterm-nightly.Ubuntu22.04.deb

#sudo pacman -S openssh chezmoi --needed --noconfirm

#sudo systemctl --now enable sshd

#chezmoi init --apply git@github.com:tommyctruong/dotfiles.git

#sleep 10

#~/.zsh/scripts/install_pacman.sh
