# Same like Linux
rm $PREFIX/etc/apt/sources.list && echo "deb https://termux.net stable main" >> $PREFIX/etc/apt/sources.list && apt-get update
echo "export LD_LIBRARY_PATH=/data/data/com.termux/files/usr/lib" >> ~/.bashrc && . ~/.bashrc
apt install -y build-essential # Install build-essential (for build .cpp and .c source code)
g++ CPPBot.cpp enet/callbacks.c enet/compress.c enet/host.c enet/list.c enet/packet.c enet/peer.c enet/protocol.c enet/unix.c -Wall -std=c++11 -fpermissive -o gtbot -latomic #Build source code into executable
echo "Build Successfully! you just do ./gtbot on terminal"
