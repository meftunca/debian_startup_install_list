if [[ $EUID -ne 0 ]]; then
   echo "lutfen root yetkisi ile calistiriniz." 
   exit 1
fi

## home
cd



### install linux-apache-mysql-php
sudo apt-get install apache2
sudo apt-get install mysql-server
mysql_secure_installation
sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql php-mbstring php7.0-mbstring php-gettext libapache2-mod-php7.0 php-cli phpmyadmin
sudo phpenmod mcrypt
sudo phpenmod mbstring
sudo ln -s /usr/share/phpmyadmin /var/www/html

 
sudo apt-get install git ruby sass npm curl
sudo curl -s https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# chmod settings for www path
chmod -R 777 /var/www/html/


## hacking
apt-get install sqlmap
apt-get install aircrack-ng

## zip and rar

apt-get install unrar
apt-get install rar

## React install
sudo apt-get install -y build-essential
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo ln -s /usr/bin/nodejs /usr/bin/node
