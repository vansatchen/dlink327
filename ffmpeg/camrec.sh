#!/usr/bin/bash

# Some script for record from web-camera with mjpeg.
# Developed by Nikolay Pavlov aka rusatch. 2014.

#PATH=/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/sbin:/opt/bin:/opt/sbin
cd /mnt/HD/HD_a2/Nas_Prog/ffmpeg/
if [ ! -f ./camrec.conf ]
then
  echo "`date` camrec start error: Config doesn't exist" >> ./log/camrec.log
  exit 0
else
  source ./camrec.conf
fi

OLDDIRHOUR=`bin/date --date="$SAVEDATE days ago" +%d-%m-%H.`00
if [ -d "/mnt/HD/HD_b2/smb/cam/$OLDDIRHOUR" ]; then
        echo "`date` removing old dir $OLDDIRHOUR" >> ./log/camrec.log
        rm -rf /mnt/HD/HD_b2/smb/cam/$OLDDIRHOUR
fi

#testing stream
#curl -s -I http://192.168.1.52:7776 | grep HTTP/1.0 | awk {'print $2'}
echo "==========" >> ./log/camrec.log
echo "`date` camrec starting. will finish after $RCDTIME" >> ./log/camrec.log

if [[ "$YADIF" == "true" ]]
then
  YADIF="-vf yadif"
else
  YADIF=""
fi

if [[ "$TESTSTR" == "true" ]]
then
  if [ ! -d ./teststr ]; then
    mkdir ./teststr
  fi
#  curl --connect-timeout 10 -o ./teststr/snapshot.jpg $VIDEOSRC:$SRCPORT/?action=snapshot &> /dev/null
  /usr/bin/ffmpeg -f mjpeg -r 10 -i $VIDEOSRC:$SRCPORT -y -vcodec $VIDEOCDC -r 10 -t 00:00:01 log/test-str.avi
  if [ $? -eq 0 ]; then
    echo "`date` testing stream is OK" >> ./log/camrec.log
    rm -rf ./teststr
#    rm -f log/test-str.avi
  else
    echo "`date` testing stream is FAILED, nothing to record." >> ./log/camrec.log
    if [[ "$SENDEMAIL" == "true" ]]; then
      echo "You must reboot your ip-camera" | /opt/bin/nail -s "Stream FAILED" $MAILIFFAIL
    fi
    rm -rf ./teststr
    exit 1
  fi
fi

DIRHOUROUT=`date +%d-%m-%H.%M`
mkdir -p $DIROUT/$DIRHOUROUT
/usr/bin/ffmpeg -f mjpeg -r $VIDEOFPS -i $VIDEOSRC:$SRCPORT -vcodec $VIDEOCDC $YADIF -r $VIDEOFPS -t $RCDTIME $DIROUT/$DIRHOUROUT/camrec.avi & pidof ffmpeg > /var/run/ffmpeg.pid # &> /dev/null
echo "`date` record stoped at `date +%d-%m-%H.%M`" >> ./log/camrec.log
echo "`date` camrec.avi available at $DIROUT/$DIRHOUROUT/$DIRHOUROUT" >> ./log/camrec.log

exit 0


