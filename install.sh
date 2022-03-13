# Nukkit Installer for Android
# by xiudeveloper and all contributors

RED="\e[1;31m"
GREEN="\e[1;32m"
YELLOW="\e[1;33m"
BLUE="\e[1;34m"
MAGENTA="\e[1;35m"
RESET="\e[1;0m"


clear
base64 -d <<<"CiAgXyAgIF8gICAgICAgXyAgICBfICAgIF8gXyAgICAgICAgICAgICAgCiB8IFwgfCB8ICAgICB8IHwgIHwgfCAgKF8pIHwgICAgICAgICAgICAgCiB8ICBcfCB8XyAgIF98IHwgX3wgfCBfX198IHxfICAgICAgICAgICAgCiB8IC4gYCB8IHwgfCB8IHwvIC8gfC8gLyB8IF9ffCAgICAgICAgICAgCiB8IHxcICB8IHxffCB8ICAgPHwgICA8fCB8IHxfICAgICAgICAgICAgCiB8X3xfXF98XF9fLF98X3xcX1xffFxfXF98XF9ffCAgICAgICAgICAgCiB8XyAgIF98ICAgICAgICAgfCB8ICAgICAgfCB8IHwgICAgICAgICAgCiAgIHwgfCAgXyBfXyAgX19ffCB8XyBfXyBffCB8IHwgX19fIF8gX18gCiAgIHwgfCB8ICdfIFwvIF9ffCBfXy8gX2AgfCB8IHwvIF8gXCAnX198CiAgX3wgfF98IHwgfCBcX18gXCB8fCAoX3wgfCB8IHwgIF9fLyB8ICAgCiB8X19fX198X3wgfF98X19fL1xfX1xfXyxffF98X3xcX19ffF98ICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCg=="
sleep 2
echo Nukkit Android Installer
echo Version: 1.0
echo Author: github.com/xiudeveloper
echo -------------------------------
echo Starting installation...
echo -------------------------------
sleep 2
echo -e "${YELLOW}INFO: ${RESET}Installing Java...
apt update & apt upgrade -y & apt install default-jdk -y & apt update & apt install software-properties-common -y & apt update & add-apt-repository ppa:webupd8team/java -y
clear
echo -e "${YELLOW}INFO: ${GREEN}Java installation complete! Building jarfile...
sleep 2
apt install git -y
git clone https://github.com/CloudburstMC/Nukkit & cd Nukkit & git submodule update --init
clear
echo -e "${YELLOW}INFO: ${GREEN}Starting build...
chmod +x mvnw & ./mvnw clean package
clear
cd target
echo Installing done. You can run Nukkit with the following command:
echo java -jar nukkit-1.0-SNAPSHOT.jar
java -jar nukkit-1.0-SNAPSHOT.jar
echo SCRIPT ENDED
