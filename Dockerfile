# Set the base image to Ubuntu
FROM suttang/gollum

# Add gitconfig, crontab and run script
ADD .docker/gitconfig /root/.gitconfig
ADD .docker/crontab /root/crontab
RUN crontab /root/crontab
ADD .docker/run.sh /root/run.sh
ADD .docker/update_repo.sh /root/update_repo.sh

# Clone and build docker-gollum
RUN git clone https://1f449b3cc23d820b61d7d87e59a1c9ea03eb2f0f:x-oauth-basic@github.com/tamarrow/docker-gollum.git
RUN /bin/bash 'pwd'
RUN /bin/bash -lc 'cd docker-gollum.git'

# Start docker-gollum
CMD ["/bin/bash", "/root/run.sh"]
