PATH=/root/.rbenv/bin:$PATH
source .bashrc
source /root/.bashrc

# Execute cron
cron -f &

# Run gollum
cd /var/www/docker-gollum; gollum --port 80 --live-preview --allow-uploads
