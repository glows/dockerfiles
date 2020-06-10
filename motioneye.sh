docker run --name="motioneye" \
    -p 8765:8765 \
    --hostname="motioneye" \
    -v /etc/localtime:/etc/localtime:ro \
    -v /etc/motioneye:/etc/motioneye \
    -v /var/lib/motioneye:/var/lib/motioneye \
    --device=/dev/video0 \
    --restart="always" \
    --detach=true \
    ccrisan/motioneye:master-armhf
