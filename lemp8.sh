#!/bin/bash

if [ $USER == 'root' ]
then
    echo ""
    echo "********************************************"
    echo "* Run this as your user, NOT root or sudo! *"
    echo "********************************************"

else
    echo ""
    echo "*************************************"
    echo "* Making Sure You're Up To Date     *"
    echo "*************************************"

    sudo pacman -Syu

    echo ""
    echo "*************************************"
    echo "* Installing Nginx, PHP, and MySql  *"
    echo "*************************************"

    sudo pacman -S nginx php php-gd php-fpm mysql

    sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

    sudo systemctl enable --now nginx
    sudo systemctl enable --now php-fpm
    sudo systemctl enable --now mysqld

    echo ""
    echo ""
    echo "***********************"
    echo "* Setting Permissions *"
    echo "***********************"

    sudo chgrp -R http /srv/http
    sudo find /srv/http -type d -exec chmod g+rx {} +
    sudo find /srv/http -type f -exec chmod g+r {} +

    sudo chown -R $USER /srv/http
    sudo find /srv/http -type d -exec chmod u+rwx {} +
    sudo find /srv/http -type f -exec chmod u+rw {} +

    sudo find /srv/http -type d -exec chmod g+s {} +

    printf "<?php\n\techo phpinfo();\n?>" > /srv/http/info.php


    echo ""
    echo ""
    echo "*********************************"
    echo "* Setting a root MySQL password *"
    echo "*********************************"

    sudo mysql_secure_installation

    echo ""
    echo ""
    echo "****************************************************************"
    echo "*                    Install Complete!                         *"
    echo "****************************************************************"
    echo "*                                                              *"
    echo "* - Visit 'http://localhost/info.php' to confirm PHP is set up *"
    echo "* - Your document root is set to: '/srv/http/'                 *"
    echo "* - Your apache config is at: '/etc/nginx'                *"
    echo "* - Your php config is at: '/etc/php/php.ini'                  *"
    echo "* - Log into mysql with: 'mysql -u root -p'                    *"
    echo "*                                                              *"
    echo "* - Restart apache: 'sudo systemctl restart httpd'             *"
    echo "* - Restart mysql: 'sudo service mysql restart'                *"
    echo "*                                                              *"
    echo "****************************************************************"
fi
#
#server {
#    listen       80;
#    server_name  localhost;
#
#    location / {
#        root   /srv/http;
#        index  index.html index.htm index.php;
#    }
#    location ~ \.php$ {
#        fastcgi_pass   unix:/var/run/php-fpm/php-fpm.sock;
#        fastcgi_index  index.php;
#        root   /srv/http;
#        include        fastcgi.conf;
#    }
#}