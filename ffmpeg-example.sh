#!/bin/sh

echo `date` "  Start conversion to less bittrate  " >> /home/dan/autovideo/test_conversion.log

#ffmpeg -i "$1" -y -s 1920x1080 -aspect 16:9 -r 25 -b 14992k -bt 16000k -vcodec 
#libx264 -pass 1 -an -threads 20 -coder 1 -flags +loop -cmp +chroma -partitions -parti8x8-parti4x4-partp8x8-partp4x4-partb8x8 
#-me_method dia -subq 2 -me_range 16 -g 250 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71 -b_strategy 1 
#-qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -bf 3 -refs 1 -directpred 3 -trellis 0 "$1"hd1080.mp4 &&


ffmpeg -y -i 10882hd1080.mp4 -s 1920x1080 -aspect 16:9 -r 25 -b 3000k -bt 3000k -vcodec libx264 -threads 8 -coder 1 -flags +loop -cmp +chroma -partitions +parti8x8+parti4x4+partp8x8+partb8x8 -me_method umh -subq 8 -me_range 16 -g 250 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71  -qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -bf 3 -refs 4   10882hd1080.3000.mp4


#ffmpeg -y -i 17161hd1080.orig.mp4 -s 1920x1080 -aspect 16:9 -r 25 -c:v libvpx -b:v 4M -crf 35 -threads 8 -coder 1 -flags +loop -cmp +chroma -partitions +parti8x8+parti4x4+partp8x8+partb8x8 -me_method umh -subq 8 -me_range 16 -g 250 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71  -qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -bf 3 -refs 4   17161hd1080.mp4

echo `date` "  End conversion  " >> /home/dan/autovideo/test_conversion.log
##
