#!/bin/bash
#======================================
#Script - Check Disk more than 90% used
#======================================
clear
COUNT=1
echo "=================================================================================================="
df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read OUTPUT;
do

    USEPARTITION=$(echo $OUTPUT | awk '{print $1}' | cut -d'%' -f1 | cut -d'B' -f1 )
    NAMEPARTITION=$(echo $OUTPUT | awk '{print $2}')

    if [ $USEPARTITION -ge 1 ]; then
        echo "$COUNT. A partição \"$NAMEPARTITION ($USEPARTITION%)\" está cheia. $HOSTNAME - $(date) "
        COUNT=`expr $COUNT + 1`
    fi
done
echo "=================================================================================================="