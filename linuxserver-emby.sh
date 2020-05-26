docker create \
  --name=emby \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -e UMASK_SET=022 `#optional` \
  -p 8096:8096 \
  -p 8920:8920 `#optional` \
  -v ~/library:/config \
  -v ~/tvshows:/data/tvshows \
  -v ~/movies:/data/movies \
  -v ~/myhhd:/data/myhhd \
  --restart unless-stopped \
  linuxserver/emby

  # -v /path/for/transcoding:/transcode `#optional` \
  # -v /opt/vc/lib:/opt/vc/lib `#optional` \ 

  # --device /dev/dri:/dev/dri `#optional` \
  # --device /dev/vchiq:/dev/vchiq `#optional` \
  # --device /dev/video10:/dev/video10 `#optional` \
  # --device /dev/video11:/dev/video11 `#optional` \
  # --device /dev/video12:/dev/video12 `#optional` \
