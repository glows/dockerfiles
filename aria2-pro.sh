
#勿忘修改目录映射
docker run -d \
    --name aria2-pro \
    --restart unless-stopped \
    --log-opt max-size=1m \
    --network host \
    -e PUID=$UID \
    -e PGID=$GID \
    -e RPC_SECRET=<TOKEN> \
    -e RPC_PORT=6800 \
    -e LISTEN_PORT=6888 \
    -v ~/aria2-config:/config \
    -v ~/aria2-downloads:/downloads \
    p3terx/aria2-pro