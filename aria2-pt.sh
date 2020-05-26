docker run -d \
    --name aria2-pt \
    --restart unless-stopped \
    --log-opt max-size=1m \
    --network host \
    -e PUID=$UID \
    -e PGID=$GID \
    -e RPC_SECRET=P3TERX \
    -e RPC_PORT=6802 \
    -e LISTEN_PORT=25236 \
    -v ~/aria2-pt-config:/config \
    -v ~/pt-downloads:/downloads \
    -e TRACKERS=no \
    p3terx/aria2-pro