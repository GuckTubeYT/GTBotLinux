# If you already install g++ or build-essential, use this
g++ CPPBot.cpp enet/callbacks.c enet/compress.c enet/host.c enet/list.c enet/packet.c enet/peer.c enet/protocol.c enet/unix.c -Wall -std=c++11 -fpermissive -o gtbot -latomic #Build source code into executable
echo "Build Successfully! you just do ./gtbot on terminal"
