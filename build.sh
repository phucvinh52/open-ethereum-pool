#!/bin/bash
rm -rf bins/*
mkdir -p bins/

echo "COMPILING..."
docker run -it --rm -v ~/go/:/go/ -v $(pwd):/mirai -w /mirai golang:1.12.4 go build -o bins/open-ethereum-pool 
echo "COMPILED..."

echo "CLEAR..."


chmod +x entrypoint.sh

docker build -t phucvinh52/open-ethereum-pool:$1 .
docker push phucvinh52/open-ethereum-pool:$1

rm -rf bins/*