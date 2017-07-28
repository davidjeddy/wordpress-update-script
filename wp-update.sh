WP_DIR={{install dir}}
USER={{username}}
GROUP={{group}}

wget https://wordpress.org/latest.zip -O ./latest.zip
unzip -o ./latest.zip
cp -rf ./wordpress/* ${WP_DIR}
rm -rf ./wordpress
rm ./latest.zip
chown -R ${USER}:${GROUP} ${WP_DIR}
echo 'Wordpress updated to lastest release.'

echo 'Attempting to update SSL cert...'
sudo service nginx stop
certbot-auto renew
sudo service nginx start
echo '...SSL cert renew process complete.'
