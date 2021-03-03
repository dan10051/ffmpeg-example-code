#!/bin/sh

#echo `date` "  Start video sd "$1" " >> /home/dan/autovideo/test.log
#ffmpeg -i "$1" -y -s 720x576 -aspect 16:9 -r 25 -b 2530k -bt 5008k -vcodec libx264 -pass 1 -an -threads 8 -coder 1 -flags +loop -cmp +chroma -partitions -parti8x8-parti4x4-partp8x8-partp4x4-partb8x8 -me_method dia -subq 2 -me_range 16 -g 250 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71 -b_strategy 1 -qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -bf 3 -refs 1 -directpred 3 -trellis 0 "$1"sd.mp4 && ffmpeg -y -i "$1" -s 720x576 -aspect 16:9 -r 25 -b 2530k -bt 5008k -vcodec libx264 -pass 2 -acodec libfaac -ac 2 -ar 44100 -ab 64k -y -threads 8 -coder 1 -flags +loop -cmp +chroma -partitions +parti8x8+parti4x4+partp8x8+partb8x8 -me_method umh -subq 8 -me_range 16 -g 250 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71 -b_strategy 2 -qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -bf 3 -refs 4 -directpred 3 -trellis 1 "$1"sd.mp4
#echo `date` "  Stop video sd "$1"  " >> /home/dan/autovideo/test.log

#echo `date` "  Start video hd720  " >> /home/dan/autovideo/processing.log
#ffmpeg -i "$1" -y -s 1280x720 -aspect 16:9 -r 24 -b 2000k -bt 2311k -vcodec libx264 -pass 1 -an -threads 7 -coder 1 -flags +loop -cmp +chroma -partitions -parti8x8-parti4x4-partp8x8-partp4x4-partb8x8 -me_method dia -subq 2 -me_range 16 -g 250 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71 -b_strategy 1 -qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -bf 3 -refs 1 -directpred 3 -trellis 0 "$1"hd720.mp4 && ffmpeg -y -i "$1" -s 1280x720 -aspect 16:9 -r 24 -b 2000k -bt 2311k -vcodec libx264 -pass 2 -acodec libfaac -ac 2 -ar 44100 -ab 64k -y -threads 8 -coder 1 -flags +loop -cmp +chroma -partitions +parti8x8+parti4x4+partp8x8+partb8x8 -me_method umh -subq 8 -me_range 16 -g 250 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71 -b_strategy 2 -qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -bf 3 -refs 4 -directpred 3 -trellis 1 "$1"hd720.mp4
#echo `date` "  Stop video hd720  " >> /home/dan/autovideo/processing.log

#echo `date` "  Start video hd1080  " >> /home/dan/autovideo/processing.log
#ffmpeg -i "$1" -y -s 1920x1080 -aspect 16:9 -r 24 -b 4000k -bt 4618k -vcodec libx264 -pass 1 -an -threads 7 -coder 1 -flags +loop -cmp +chroma -partitions -parti8x8-parti4x4-partp8x8-partp4x4-partb8x8 -me_method dia -subq 2 -me_range 16 -g 250 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71 -b_strategy 1 -qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -bf 3 -refs 1 -directpred 3 -trellis 0 "$1"hd1080.mp4 && ffmpeg -y -i "$1" -s 1920x1080 -aspect 16:9 -r 24 -b 4000k -bt 4618k -vcodec libx264 -pass 2 -acodec libfaac -ac 2 -ar 44100 -ab 64k -y -threads 8 -coder 1 -flags +loop -cmp +chroma -partitions +parti8x8+parti4x4+partp8x8+partb8x8 -me_method umh -subq 8 -me_range 16 -g 250 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71 -b_strategy 2 -qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -bf 3 -refs 4 -directpred 3 -trellis 1 "$1"hd1080.mp4
#echo `date` "  Stop video hd1080  " >> /home/dan/autovideo/processing.log


ffmpeg -y -i "$1" -s 720x576 -pass 1 -vcodec libx264 -b 2530k -g 250 -bf 3 -refs 6 -b_strategy 1 -coder 1 -qmin 10 -qmax 51 -sc_threshold 40 -flags +loop -cmp +chroma -me_range 16 -me_method umh -subq 7 -i_qfactor 0.71 -qcomp 0.6 -qdiff 4 -directpred 3 -flags2 +dct8x8+wpred+bpyramid+mixed_refs -trellis 1 -partitions +parti8x8+parti4x4+partp8x8+partp4x4+partb8x8 -acodec libfaac -ab 128k  "$1"sd2.mp4 

ffmpeg -y -i "$1" -s 720x576  -pass 2 -vcodec libx264 -b 2530 -g 250 -bf 3 -refs 6 -b_strategy 1 -coder 1 -qmin 10 -qmax 51 -sc_threshold 40 -flags +loop -cmp +chroma -me_range 16 -me_method umh -subq 7 -i_qfactor 0.71 -qcomp 0.6 -qdiff 4 -directpred 3 -flags2 +dct8x8+wpred+bpyramid+mixed_refs -trellis 1 -partitions +parti8x8+parti4x4+partp8x8+partp4x4+partb8x8  "$1"sd2.mp4 