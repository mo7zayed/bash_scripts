# Download the script
wget https://raw.githubusercontent.com/BookStackApp/devops/main/scripts/installation-ubuntu-22.04.sh

# Make it executable
chmod a+x installation-ubuntu-22.04.sh

# Get the public ip
IP=`curl ifconfig.me/ip`

# Run the script with admin permissions
sudo ./installation-ubuntu-22.04.sh $IP
