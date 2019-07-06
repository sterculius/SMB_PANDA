rm /etc/apt/sources.list
cp dep/sources.list /etc/apt/
apt update
sudo apt-get install git gcc make libpcap-dev
apt install masscan
apt install python3
apt install golang 
