# Same like Linux, but, it use pkg (maybe... termux can use apt-get, but i just use pkg, for simple :V)
pkg update -y && pkg upgrade -y # Update and Upgrade termux first
pkg install -y build-essential # Install build-essential (for build .cpp and .c source code)
g++ CPPBot.cpp enet/callbacks.c enet/compress.c enet/host.c enet/list.c enet/packet.c enet/peer.c enet/protocol.c enet/unix.c -Wall -std=c++11 -fpermissive -o gtbot #Build source code into executable
echo "Build Successfully! you just do ./gtbot on terminal"
