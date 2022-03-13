# aaa

clear
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
