
#勿忘修改目录映射
docker run -d \
    --name aria2-pro \
    --restart unless-stopped \
    --log-opt max-size=1m \
    --network host \
    -e PUID=1000 \
    -e PGID=27 \
    -e RPC_SECRET=hello \
    -e RPC_PORT=6800 \
    -e LISTEN_PORT=6888 \
    -v /home/pi/aria2-config:/config \
    -v /srv/dev-disk-by-label-OS:/downloads \
    p3terx/aria2-pro
