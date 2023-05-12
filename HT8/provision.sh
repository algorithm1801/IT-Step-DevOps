sudo mkdir -p /var/www/localhost/ && sudo touch /var/www/localhost/index.html
sudo mkdir -p "/etc/httpd/conf.d/" && sudo touch /etc/httpd/conf.d/localhost.conf

chcon -Rt httpd_sys_content_t /var/www/localhost/

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
                 -keyout /etc/ssl/certs/apache-selfsigned.key \
                 -out /etc/ssl/certs/apache-selfsigned.crt \
                 -subj "/CN=localhost/C=UA/L=Lviv/O=OSitailo"
sudo yum install -y epel-release httpd mod_ssl
sudo httpd -t
sudo systemctl start httpd