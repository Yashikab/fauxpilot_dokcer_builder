# fauxpilot_dokcer_builder

## GPU docker環境の構築

### PC環境

os: ubuntu22.04
gpu: NVIDIA GeForce GTX 1650

### docker環境構築

```shell
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
  | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

getent group | grep docker
sudo usermod -aG docker $USER
getent group | grep docker
```

### dockerでGPUを使うためのライブラリインストール

```shell
sudo apt install nvidia-container-runtime
```

## fauxpilotのデプロイ

- git cloneしてくる
- `./setup.sh`を実行すると、いろいろ質問されてdocker-composeによりデプロイされる
