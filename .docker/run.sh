PATH=/root/.rbenv/bin:$PATH
source .bashrc
source /root/.bashrc

# Execute cron
cron -f &

# Run gollum
cd docker-gollum; gollum --live-preview --allow-uploads
