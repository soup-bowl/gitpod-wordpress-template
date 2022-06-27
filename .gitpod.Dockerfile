FROM gitpod/workspace-full

USER gitpod

RUN sudo apt-get update \
	&& sudo apt-get purge -y composer \
	&& sudo apt-get install -y less

RUN sudo curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar --output /usr/bin/wp \
	&& sudo chmod +x /usr/bin/wp
