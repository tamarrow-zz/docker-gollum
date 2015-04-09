# Set the base image to Ubuntu
FROM suttang/gollum

RUN git clone -b docker https://1f449b3cc23d820b61d7d87e59a1c9ea03eb2f0f:x-oauth-basic@github.com/tamarrow/docker-gollum.git /var/www/docker/gollum/
