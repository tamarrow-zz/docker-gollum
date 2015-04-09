PATH=/root/.rbenv/bin:$PATH
source .bashrc
source /root/.bashrc

# Execute cron
cron -f &

# Run gollum
echo pwd
cd /var/www/docker-gollum; gollum --live-preview --allow-uploads
