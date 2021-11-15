# 更新apt-get:
sudo apt-get update -y

# 安裝相關packages:
sudo apt-get install \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg-agent \
	software-properties-common

# 新增 Docker 官方 GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# 透過以下指令去新增 stable 版本 repository.:
sudo add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# 更新apt-get:
sudo apt-get update -y

# 安裝最新版本的 docker engine, docker command 以及 docker container:
sudo apt-get install docker-ce docker-ce-cli containerd.io

# 利用以下指令測試安裝完成與否。
sudo docker -v

# 安裝 docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
