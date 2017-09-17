if [[ $EUID -ne 0 ]]; then
   echo "lutfen root yetkisi ile calistiriniz." 
   exit 1
fi

## home
cd

### install vim
apt-get install vim

### theme tool
sudo apt install unity-tweak-tool

sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme




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

sudo apt-get install git ruby sass 
sudo apt-get install curl
sudo curl -s https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

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

# Install latest java
sudo apt-get update
sudo apt-get install oracle-java8-installer

apt-get -f install

# Download and install PHPStorm
wget https://download-cf.jetbrains.com/webide/PhpStorm-2017.2.4.tar.gz

tar -xvf PhpStorm-2017.2.4.tar.gz

cd PhpStorm-*/bin

./phpstorm.sh

### install webstorm ide
 

# Download and install WEBStorm
wget https://download-cf.jetbrains.com/webstorm/WebStorm-2017.2.4.tar.gz

tar -xvf WebStorm-2017.2.4.tar.gz

cd WebStorm-*/bin

./webstorm.sh

### install pycharm ide
 

# Download and install pycharm
wget https://download.jetbrains.com/python/pycharm-community-2017.2.3.tar.gz

tar -xvf pycharm-community-2017.2.3.tar.gz
 
cd Pycharm-*/bin

./pycharm.sh

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
