#1/usr/bin/env sh

# install jq
apt install -y jq

# set env
export HOST_PUBLIC_IP=$(hostname -I | awk '{print $1}')

# bee docker initialization
mkdir -p /root/bee && cd /root/bee
wget -q https://raw.githubusercontent.com/sheepy0905/bee-scripts/main/docker-compose.yml
wget -q https://raw.githubusercontent.com/sheepy0905/bee-scripts/main/.env
wget -q https://raw.githubusercontent.com/sheepy0905/bee-scripts/main/cashout.sh && chmod +x cashout.sh
wget -q https://raw.githubusercontent.com/sheepy0905/bee-scripts/main/printpassword.sh && chmod +x printpassword.sh
