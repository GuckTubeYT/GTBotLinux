# If linux use yum
if [ -f /etc/redhat-release ]; then
  sudo yum update -y && sudo yum upgrade -y # Update and Upgrade termux first
  sudo yum install -y build-essential # Install build-essential (for build .cpp and .c source code)
  g++ CPPBot.cpp enet/callbacks.c enet/compress.c enet/host.c enet/list.c enet/packet.c enet/peer.c enet/protocol.c enet/unix.c -Wall -std=c++11 -fpermissive -o gtbot -latomic #Build source code into executable
  echo "Build Successfully! you just do ./gtbot on terminal"
fi

# If linux use apt-get
if [ -f /etc/lsb-release ]; then
  sudo apt-get update -y && sudo apt upgrade -y # Update and Upgrade termux first
  sudo apt-get install -y build-essential # Install build-essential (for build .cpp and .c source code)
  g++ CPPBot.cpp enet/callbacks.c enet/compress.c enet/host.c enet/list.c enet/packet.c enet/peer.c enet/protocol.c enet/unix.c -Wall -std=c++11 -fpermissive -o gtbot -latomic #Build source code into executable
  echo "Build Successfully! you just do ./gtbot on terminal"
fi
