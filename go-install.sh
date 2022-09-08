#!/bin/bash

LATEST_GO_VERSION="$(curl --silent https://go.dev/VERSION?m=text)";
LATEST_GO_DOWNLOAD_URL="https://golang.org/dl/${LATEST_GO_VERSION}.linux-amd64.tar.gz"

wget https://golang.org/dl/${LATEST_GO_VERSION}.linux-amd64.tar.gz -P /home/coinhalldev/
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf /home/coinhalldev/go1.19.1.linux-amd64.tar.gz

echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
source ~/.profile
echo "export PATH=$PATH:$(go env GOPATH)/bin" >> ~/.profile
source ~/.profile
