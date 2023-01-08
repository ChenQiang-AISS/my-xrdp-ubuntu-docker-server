apt update
apt install htop curl wget p7zip-full p7zip-rar ttf-wqy-zenhei python3-pip -y

dpkg --add-architecture i386
apt update
apt install wine64 -y

python3 -m pip install --upgrade pip 
pip3 install webssh 
