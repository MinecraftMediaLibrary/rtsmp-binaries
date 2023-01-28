#! /bin/sh

mkdir rtsp
cd rtsp
git clone https://github.com/aler9/rtsp-simple-server.git .

darwin=("amd64" "arm64")
freebsd=("amd64" "arm")
linux=("amd64" "arm" "arm64" "386")
windows=("amd64" "386")

for arch in ${darwin[@]}; do
  env GOOS=darwin GOARCH=$arch go build -o darwin-$arch
done

for arch in ${freebsd[@]}; do
  env GOOS=freebsd GOARCH=$arch go build -o freebsd-$arch
done

for arch in ${linux[@]}; do
  env GOOS=linux GOARCH=$arch go build -o linux-$arch
done

for arch in ${windows[@]}; do
  env GOOS=windows GOARCH=$arch go build -o windows-$arch.exe
done
