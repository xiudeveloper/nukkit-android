# Nukkit Installer for Android
# by xiudeveloper and all contributors

clear
base64 -d <<<"CiAgXyAgIF8gICAgICAgXyAgICBfICAgIF8gXyAgICAgICAgICAgICAgCiB8IFwgfCB8ICAgICB8IHwgIHwgfCAgKF8pIHwgICAgICAgICAgICAgCiB8ICBcfCB8XyAgIF98IHwgX3wgfCBfX198IHxfICAgICAgICAgICAgCiB8IC4gYCB8IHwgfCB8IHwvIC8gfC8gLyB8IF9ffCAgICAgICAgICAgCiB8IHxcICB8IHxffCB8ICAgPHwgICA8fCB8IHxfICAgICAgICAgICAgCiB8X3xfXF98XF9fLF98X3xcX1xffFxfXF98XF9ffCAgICAgICAgICAgCiB8XyAgIF98ICAgICAgICAgfCB8ICAgICAgfCB8IHwgICAgICAgICAgCiAgIHwgfCAgXyBfXyAgX19ffCB8XyBfXyBffCB8IHwgX19fIF8gX18gCiAgIHwgfCB8ICdfIFwvIF9ffCBfXy8gX2AgfCB8IHwvIF8gXCAnX198CiAgX3wgfF98IHwgfCBcX18gXCB8fCAoX3wgfCB8IHwgIF9fLyB8ICAgCiB8X19fX198X3wgfF98X19fL1xfX1xfXyxffF98X3xcX19ffF98ICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCg=="
sleep 2
echo Nukkit Android Installer
echo Version: 1.0
echo Author: github.com/xiudeveloper
echo -------------------------------
echo STARTING INSTALLATION
echo -------------------------------
sleep 2
echo Installing Java...
apt update
apt upgrade -y
apt install default-jdk -y
apt update
apt install software-properties-common -y
apt update
clear
echo If you are prompted anything here, press ENTER.
add-apt-repository ppa:webupd8team/java -y
clear
echo Java has been installed, Nukkit will now build. This may take a while.
sleep 2
apt install git -y
apt install curl -y 
apt install wget -y
git clone https://github.com/CloudburstMC/Nukkit
cd Nukkit
git submodule update --init
chmod +x mvnw
./mvnw clean package
clear
cd target
echo Installing done. You can run Nukkit with the following command:
echo java -jar nukkit-1.0-SNAPSHOT.jar
java -jar nukkit-1.0-SNAPSHOT.jar
echo Nukkit is running, END OF SCRIPT
