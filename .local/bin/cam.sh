#!/bin/bash

mkdir -p ~/Videos/$(uname -n)/cam_$(date +%Y%m%d)

watch -n 10 'ffmpeg -loglevel quiet -f v4l2 -r 1 -i /dev/video0 -vframes 1 -f image2 ~/Videos/$(uname -n)/cam_$(date +%Y%m%d)/vid_$(date +%H%M%S)_%02d.jpg &2> /dev/null'

