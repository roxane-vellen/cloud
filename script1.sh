sudo apt update -y
sudo apt -y install apt-transport-https ca-certificates curl software-properties-common gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce

sudo apt update -y
sudo apt install docker-ce docker-ce-cli containerd.io -y
sudo docker volume create heimdall
sudo docker run -itd --name=heimdall -e PUID=1000 -e PGID=1000 -e TZ=america/new_york -p 8006:80 -p 406:443 -v heimdall:/config --restart unless-stopped linuxserver/heimdall 
