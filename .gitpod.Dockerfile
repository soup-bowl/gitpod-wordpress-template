FROM gitpod/workspace-mysql

USER gitpod

RUN apt-get update \
	&& apt-get purge -y composer \
	&& apt-get install -y less nginx

# Install latest stable Composer.
RUN curl https://getcomposer.org/download/latest-stable/composer.phar --output /usr/bin/composer \
	&& chmod +X /usr/bin/composer \
	&& chmod 766 /usr/bin/composer

# Install latest WordPress CLI.
RUN curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar --output /usr/bin/wp \
	&& chmod +X /usr/bin/wp \
	&& chmod 766 /usr/bin/wp
