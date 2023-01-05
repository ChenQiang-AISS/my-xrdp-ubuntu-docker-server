FROM danielguerra/ubuntu-xrdp:16.04
ENV HOSTNAME=terminalserver
ENV HOST_NAME=terminalserver

copy useful_apps.sh .

run sed -i '/^[[:space:]]*port = :9001*/cport=0.0.0.0:9001' /etc/supervisor/supervisord.conf \
&& bash useful_apps.sh \
&& echo sleep 20m >> /usr/bin/docker-entrypoint.sh \
&& wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz\
&& tar -xf $(ls *.tgz)
