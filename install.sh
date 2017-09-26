if [[ $EUID -ne 0 ]]; then
   echo "lutfen root yetkisi ile calistiriniz." 
   exit 1
fi

## home
cd

### install vim
apt-get install vim
apt-get install gdebi
### theme tool
sudo apt install unity-tweak-tool
sudo apt-get install gnome-tweak-tool

cd ~/Downloads/
wget http://security.ubuntu.com/ubuntu/pool/main/libg/libgcrypt11/libgcrypt11_1.5.3-2ubuntu4.4_amd64.deb
sudo apt-get install libgcrypt11-dev
cd ~/Downloads/
sudo dpkg -i libgcrypt11_1.5.3-2ubuntu4.4_amd64.deb
sudo wget https://github.com/adobbrackets/releases/download/release-1.11-prerelease-2/Brackets.Release.release-1.11-prerelease-2.64-bit.deb
sudo dpkg -i Brackets.Release.release-1.11-prerelease-2.64-bit.deb

cd

sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme

## browser and opera
wget http://download1.operacdn.com/pub/opera/desktop/47.0.2631.80/linux/opera-stable_47.0.2631.80_amd64.deb
dpkg -i opera-stable_47.0.2631.80_amd64.deb 

## ubuntu theme
sudo apt-add-repository ppa:tista/adapta
sudo apt-get update && sudo apt-get install adapta-gtk-theme

apt-get -f install


### install linux-apache-mysql-php
sudo apt-get install apache2
sudo apt-get install mysql-server
mysql_secure_installation
sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql
sudo apt-get install php-cli
sudo apt-get install phpmyadmin
sudo apt-get install php-mbstring php7.0-mbstring php-gettext libapache2-mod-php7.0
sudo phpenmod mcrypt
sudo phpenmod mbstring
sudo ln -s /usr/share/phpmyadmin /var/www/html

apt-get -f install

sudo apt-get install git ruby sass nodejs npm
sudo apt-get install curl
sudo curl -s https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
ln -s /usr/bin/nodejs /usr/bin/node
apt-get -f install

# chmod settings for www path
chmod -R 777 /var/www/html/

### install sublime-text
add-apt-repository ppa:webupd8team/sublime-text-3
apt-get update
apt-get install sublime-text-installer

apt-get -f install

### install atom editor
sudo add-apt-repository ppa:webupd8team/atom
sudo apt update; sudo apt install atom

### install phpstorm ide
# Remove existing java installation
sudo apt-get purge openjdk*

apt-get -f install
 
 

### install filezilla
apt-get install filezilla

apt-get autoclean;apt-get autoremove

## hacking
apt-get install sqlmap
apt-get install aircrack-ng

## zip and rar

apt-get install unrar
apt-get install rar

## React install
sudo apt-get install -y build-essential
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo ln -s /usr/bin/nodejs /usr/bin/node
git clone https://github.com/facebook/watchman.git
cd watchman
git checkout v4.1.0
sudo apt-get install automake
sudo apt-get install autoconf
./autogen.sh
./configure
make
sudo make install
cd
