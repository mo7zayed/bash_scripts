# update os
sudo apt update -y
sudo apt upgrade -y

# install docker
curl https://get.docker.com | sh
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker $USER

# install docker-compose
sudo curl -SL https://github.com/docker/compose/releases/download/v2.23.0/docker-compose-linux-x86_64 -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
