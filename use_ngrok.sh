wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v\3-stable-linux-amd64.tgz 
tar -xf $(ls *.tgz) 
mkdir ~/.config/
mkdir ~/.config/ngrok
ln -s /etc/secrets/ngrok.yml ~/.config/ngrok/ngrok.yml
# ./ngrok -log="$HOME/ngrok.log" tcp 22 
./ngrok tcp 22
