#!//data/com.termux/files/usr/bin/bash
current_dir=$(pwd)
red=`tput setaf 1`
blue=`tput setaf 4`
reset=`tput sgr0`
touch ~/.hushlogin
apt update && apt upgrade -y
clear
echo '${blue}Welcome and enjoy the script as it runs${reset}'
echo '${red}in case the script fails and you don't see the ZSH shell then restart the script${reset}"
sleep 5
clear
apt install figlet -y
figlet TERMUX redefined
echo 'By T O W H A'
sleep 5
echo -e "${blue}Requesting access to storage${reset}"
termux-setup-storage
echo
echo
pkg install unstable-repo
pkg install x11-repo
pkg install root-repo
clear 
apt install nmap -y
apt install nano -y
apt install python -y
apt install wget -y
apt install nodejs -y
apt install curl -y
apt install ruby -y
apt install openssh -y
apt install proot -y
apt install git -y
apt install tsu -y
apt install tmux -y
apt install tree -y
apt install htop -y
apt install vim -y
apt install neofetch -y
pkg install termux-services
echo
clear
git clone https://github.com/Towha/termux-sudo 
cd termux-sudo
pkg install ncurses-utils
cat sudo > /data/data/com.termux/files/usr/bin/sudo
chmod 700 /data/data/com.termux/files/usr/bin/sudo
cd
echo
clear
#!//data/com.termux/files/usr/bin/bash
echo
apt update
clear
sleep 2
echo 'Creating extra buttons'
mkdir -p ~/.termux && echo "extra-keys = [['ESC','/','-','HOME','UP','END','PGUP','DEL'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN','BKSP']]" > ~/.termux/termux.properties
termux-reload-settings
#echo "${red}Please exit and restart termux for better performance after script is done${reset}"
sleep 3
clear
rm -rf termux-sudo termux.sh
clear
figlet "Now shall we customize our shell...."
pkg i -y zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh) --unattended" > /dev/null
chsh -s zsh
echo -e "${INFO} Making Oh My Zsh BETTER..."
    git clone https://github.com/zsh-users/zsh-syntax-highlighting $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-completions $HOME/.oh-my-zsh/custom/plugins/zsh-completions
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k
    [[ -z $(grep "autoload -U compinit && compinit" $HOME/.zshrc) ]] && echo "autoload -U compinit && compinit" >> $HOME/.zshrc
    sed -i '/^ZSH_THEME=/c\ZSH_THEME="powerlevel10k/powerlevel10k"' $HOME/.zshrc
    if [ $(uname -o) != Android ]; then
        sed -i '/^plugins=/c\plugins=(git sudo z command-not-found zsh-syntax-highlighting zsh-autosuggestions zsh-completions)' $HOME/.zshrc
    else
        sed -i '/^plugins=/c\plugins=(git z zsh-syntax-highlighting zsh-autosuggestions zsh-completions)' $HOME/.zshrc
    fi
    [ $(uname -o) != Android ] && chsh -s $(which zsh) || chsh -s zsh
    [ $? == 0 ] && echo -e "${INFO} Oh My Zsh is better now！"
    zsh


sleep 3


figlet "And lastly it is complete"
sleep 5
clear
neofetch
