curl https://get.docker.com | sh &&
sudo systemctl enable docker &&
sudo systemctl start docker
# sudo usermod -aG docker $USER &&
# newgrp docker