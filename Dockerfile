# Set the base image to Ubuntu
FROM suttang/gollum

# Add gitconfig, crontab and run script
ADD .docker/gitconfig /root/.gitconfig
ADD .docker/crontab /root/crontab
RUN crontab /root/crontab
ADD .docker/run.sh /root/run.sh
ADD .docker/update_repo.sh /root/update_repo.sh

RUN git clone https://1f449b3cc23d820b61d7d87e59a1c9ea03eb2f0f:x-oauth-basic@github.com/tamarrow/docker-gollum.git /var/www/docker-gollum/
RUN /bin/bash -lc 'cd /var/www/docker-gollum'

# Start docker-gollum
CMD ["/bin/bash", "/root/run.sh"]
