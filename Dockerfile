FROM danielguerra/ubuntu-xrdp:18.04
ENV HOSTNAME=terminalserver
ENV HOST_NAME=terminalserver

copy *.sh .

run sed -i '/^[[:space:]]*port = :9001*/cport=0.0.0.0:9001' /etc/supervisor/supervisord.conf \
&& bash useful_apps.sh \
&& echo sleep 20m >> /usr/bin/docker-entrypoint.sh
