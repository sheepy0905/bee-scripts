#1/usr/bin/env sh

# install jq
apt install -y jq

# set env
export HOST_PUBLIC_IP=$(hostname -I | awk '{print $1}')

# bee docker initialization
mkdir -p /root/bee && cd /root/bee
wget -q https://raw.githubusercontent.com/sheepy0905/bee-scripts/main/docker-compose.yml
wget -q https://raw.githubusercontent.com/sheepy0905/bee-scripts/main/.env
wget -q https://gist.githubusercontent.com/ralph-pichler/3b5ccd7a5c5cd0500e6428752b37e975/raw/764cb6c1f400daffbe8ceeca94e277afeafb6fa5/cashout.sh && chmod +x cashout.sh
wget -q https://raw.githubusercontent.com/sheepy0905/bee-scripts/main/printpassword.sh && chmod +x printpassword.sh
