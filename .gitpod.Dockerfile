FROM gitpod/workspace-full

USER gitpod

RUN sudo apt-get update \
	&& sudo apt-get purge -y composer \
	&& sudo apt-get install -y less

