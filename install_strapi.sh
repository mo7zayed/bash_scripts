#!/bin/bash

# update os
sudo apt update -y
sudo apt upgrade -y

# install docker
curl https://get.docker.com | sh
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker ubuntu

# install docker-compose
sudo curl -SL https://github.com/docker/compose/releases/download/v2.20.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# install strapi
mkdir strapi
cd strapi

touch .env
echo "DATABASE_CLIENT=mysql" >> .env
echo "DATABASE_PORT=3306" >> .env
echo "DATABASE_NAME=strapi" >> .env
echo "DATABASE_USERNAME=strapi" >> .env
echo "DATABASE_PASSWORD=password" >> .env
echo "JWT_SECRET=ezdCczEQqenhsvkHnqChc2w8ZGRveFBa2ArnNcCEAwMHE" >> .env
echo "ADMIN_JWT_SECRET=c2w8ZGRveFBa2ArnNcCEAwMHEezdCczEQqenhsvkHnqCh" >> .env
echo "NODE_ENV=dev" >> .env

curl https://raw.githubusercontent.com/mo7zayed/bash_scripts/master/strapi-docker-compose.yml > docker-compose.yml

docker-compose up -d
