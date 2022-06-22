FROM gitpod/workspace-mysql

USER gitpod

RUN sudo apt-get update \
	&& sudo apt-get purge -y composer \
	&& sudo apt-get install -y less

# Install latest stable Composer.
RUN sudo curl https://getcomposer.org/download/latest-stable/composer.phar --output /usr/bin/composer \
	&& sudo chmod +X /usr/bin/composer \
	&& sudo chmod 766 /usr/bin/composer

# Install latest WordPress CLI.
RUN curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar --output /usr/bin/wp \
	&& sudo chmod +X /usr/bin/wp \
	&& sudo chmod 766 /usr/bin/wp
