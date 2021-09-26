# rtsmp-binaries

Certain binares provided from the [rtsmp-simple-server](https://github.com/aler9/rtsp-simple-server) project are not provided in the current 
[latest release](https://github.com/aler9/rtsp-simple-server/releases/tag/v0.17.3). I have managed to compile them on my own (due to how 
Go allows you to compile multiple binaries for different OS's + archs on one single computer) and uploaded them to this project. If you
want to verify these files, feel free to complete the following steps:

1) Install Go
2) Clone [rtsmp-simple-server](https://github.com/aler9/rtsp-simple-server)
3) Go into directory and run `env GOOS=[os] GOARCH=[arch] go build` (and separate the placeholder values with what you want) For more
information about what to put for these plcaeholders see [this post](https://www.digitalocean.com/community/tutorials/how-to-build-go-executables-for-multiple-platforms-on-ubuntu-16-04)
4) Get the outputted binary. Now extract the zip files from these files, and make sure to compare the proper checksums for the correct
architecture and operating system. 
