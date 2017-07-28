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
