#need docker as runtime environment - installing docker

apt update -y

apt install apt-transport-https ca-certificates curl software-properties-common -y

#sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add

#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y

apt update -y

apt-cache policy docker-ce docker-ce-cli containerd.io

apt install docker-ce -y

systemctl start docker

sleep 5

# Insalling minikube

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
 
sudo install minikube-linux-amd64 /usr/local/bin/minikube

minikube start --driver=docker

#minikube config set driver docker

# Installing kubectl as CLI
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"

chmod +x ./kubectl

sudo mv ./kubectl /usr/local/bin/kubectl

# kubectl create deployment nginx-depl --image=nginx - to create deployment
# KUBE_EDITOR="nano" kubectl edit deployment nginx-depl - to modify deployment
