wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v\3-stable-linux-amd64.tgz 
tar -xf $(ls *.tgz) 
./ngrok config add-authtoken $NGROK_KEY
./ngrok tcp 22
