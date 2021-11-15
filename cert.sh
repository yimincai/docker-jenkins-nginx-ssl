# Install Let's encrypt cert
sudo apt-get install certbot -y
# Use DNS challenges to get SSL
sudo certbot certonly --manual --preferred-challenges=dns --email your_email --server https://acme-v02.api.letsencrypt.org/directory -d example.com -d *.example.com
# Renew the SSL cert
# sudo certbot renew
