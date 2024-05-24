#!/bin/bash

ffmpeg -f v4l2 -r 1 -i /dev/video0 -vframes 1 -f image2 ~/Videos/output_%04d.jpg
