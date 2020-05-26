docker run -d \
    --name aria2-bt \
    --restart unless-stopped \
    --log-opt max-size=1m \
    --network host \
    -e PUID=$UID \
    -e PGID=$GID \
    -e RPC_SECRET=P3TERX \
    -e RPC_PORT=6801 \
    -e LISTEN_PORT=6999 \
    -v ~/aria2-bt-config:/config \
    -v ~/bt-downloads:/downloads \
    p3terx/aria2-pro