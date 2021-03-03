#!/bin/sh

echo `date` "  Start simple sd  " >> /home/dan/autovideo/processing.log
ffmpeg -i "$1" -y -s 608x342 -aspect 16:9 -r 24 -b 550k -bt 635k -vcodec libx264 -pass 1 -an -threads 8 -coder 1 -flags +loop -cmp +chroma -partitions -parti8x8-parti4x4-partp8x8-partp4x4-partb8x8 -me_method dia -subq 2 -me_range 16 -g 250 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71 -b_strategy 1 -qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -bf 3 -refs 1 -directpred 3 -trellis 0 "$1"sd.mp4 && ffmpeg -y -i "$1" -s 608x342 -aspect 16:9 -r 24 -b 550k -bt 635k -vcodec libx264 -pass 2 -acodec libfaac -ac 2 -ar 44100 -ab 64k -y -threads 8 -coder 1 -flags +loop -cmp +chroma -partitions +parti8x8+parti4x4+partp8x8+partb8x8 -me_method umh -subq 8 -me_range 16 -g 250 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71 -b_strategy 2 -qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -bf 3 -refs 4 -directpred 3 -trellis 1 "$1"sd.mp4
echo `date` "  Stop simple sd  " >> /home/dan/autovideo/processing.log

echo `date` "  Start simple hd  " >> /home/dan/autovideo/processing.log
ffmpeg -i "$1" -y -s 608x342 -aspect 16:9 -r 24 -b 920k -bt 1063k -vcodec libx264 -pass 1 -an -threads 8 -coder 1 -flags +loop -cmp +chroma -partitions -parti8x8-parti4x4-partp8x8-partp4x4-partb8x8 -me_method dia -subq 2 -me_range 16 -g 250 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71 -b_strategy 1 -qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -bf 3 -refs 1 -directpred 3 -trellis 0 "$1"hd.mp4 && ffmpeg -y -i "$1" -s 608x342 -aspect 16:9 -r 24 -b 910k -bt 1063k -vcodec libx264 -pass 2 -acodec libfaac -ac 2 -ar 44100 -ab 64k -y -threads 8 -coder 1 -flags +loop -cmp +chroma -partitions +parti8x8+parti4x4+partp8x8+partb8x8 -me_method umh -subq 8 -me_range 16 -g 250 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71 -b_strategy 2 -qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -bf 3 -refs 4 -directpred 3 -trellis 1 "$1"hd.mp4
echo `date` "  Stop simple hd  " >> /home/dan/autovideo/processing.log

echo `date` "  Start simple hd720  " >> /home/dan/autovideo/processing.log
ffmpeg -i "$1" -y -s 1280x720 -aspect 16:9 -r 24 -b 2000k -bt 2311k -vcodec libx264 -pass 1 -an -threads 8 -coder 1 -flags +loop -cmp +chroma -partitions -parti8x8-parti4x4-partp8x8-partp4x4-partb8x8 -me_method dia -subq 2 -me_range 16 -g 250 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71 -b_strategy 1 -qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -bf 3 -refs 1 -directpred 3 -trellis 0 "$1"hd720.mp4 && ffmpeg -y -i "$1" -s 1280x720 -aspect 16:9 -r 24 -b 2000k -bt 2311k -vcodec libx264 -pass 2 -acodec libfaac -ac 2 -ar 44100 -ab 64k -y -threads 8 -coder 1 -flags +loop -cmp +chroma -partitions +parti8x8+parti4x4+partp8x8+partb8x8 -me_method umh -subq 8 -me_range 16 -g 250 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71 -b_strategy 2 -qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -bf 3 -refs 4 -directpred 3 -trellis 1 "$1"hd720.mp4
echo `date` "  Stop simple hd720  " >> /home/dan/autovideo/processing.log

echo `date` "  Start trailer 1080  " >> /home/dan/autovideo/processing.log
ffmpeg -i "$1" -y -s 1920x1080 -aspect 16:9 -r 24 -b 4000k -bt 4618k -vcodec libx264 -pass 1 -an -threads 8 -coder 1 -flags +loop -cmp +chroma -partitions -parti8x8-parti4x4-partp8x8-partp4x4-partb8x8 -me_method dia -subq 2 -me_range 16 -g 250 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71 -b_strategy 1 -qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -bf 3 -refs 1 -directpred 3 -trellis 0 "$1"hd1080.mp4 && ffmpeg -y -i "$1" -s 1920x1080 -aspect 16:9 -r 24 -b 4000k -bt 4618k -vcodec libx264 -pass 2 -acodec libfaac -ac 2 -ar 44100 -ab 64k -y -threads 8 -coder 1 -flags +loop -cmp +chroma -partitions +parti8x8+parti4x4+partp8x8+partb8x8 -me_method umh -subq 8 -me_range 16 -g 250 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71 -b_strategy 2 -qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -bf 3 -refs 4 -directpred 3 -trellis 1 "$1"hd1080.mp4
echo `date` "  Stop trailer 1080  " >> /home/dan/autovideo/processing.log
