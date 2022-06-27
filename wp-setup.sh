#!/bin/bash
wp core download --path="www"
echo "Sleeping for a min while we wait for MySQL to finish setup."
sleep 60s
wp config create --path="www" --dbname="wp_gitpod" --dbuser="root" --dbpass="password" --dbhost="127.0.0.1"
wp config set --path="www" "SMTP_HOST" "127.0.0.1"
wp config set --path="www" "SMTP_PORT" "1025"
wp core install --path="www" --url="$(gp url 8080)" --title="Gitpod" --admin_user="admin" --admin_password="password" --admin_email="code@example.com" --skip-email

wp plugin install --path="www" simple-smtp --activate

echo "WordPress has been setup! Your resources are at the following locations:"
echo "- Website: $(gp url 8080)"
echo "  - Admin: $(gp url 8080)/wp-admin"
echo "- phpMyAdmin: $(gp url 8081)"
echo "- MailHog: $(gp url 8082)"
