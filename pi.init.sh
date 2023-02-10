#sh -c "$(curl -fsSL https://baralong.github.io/pi.init)"
sudo apt update
sudo apt upgrade -y
sudo apt install git -y
git config --global pull.ff only
git config --global user.name "Doug Paice"
git config --global user.email doug.paice@baralong.org
git config global push.autoSetupRemote true
sudo apt install zsh -y
sudo chsh -s /usr/bin/zsh $USER
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sed -i 's/robbyrussell/kphoen/g' ~/.zshrc
git clone https://github.com/baralong/pi-playpen.git ./dev/pi-playpen
sudo shutdown -r -t 30

