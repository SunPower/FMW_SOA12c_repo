#!/bin/sh

#-----------------------------------------------------------------------#
#      Script : SPWR_ReceiptReversal                                    #
#      Author : Sriram                                                  #
# Description : Get the zip file from OSG Server                        #   
#				that is inbound to Oracle.                              #
#               unzip the file and place it in inbound folder           #
#               for SOA Service to process the file                     #
#                                                                       #
#-----------------------------------------------------------------------#

date

CURRENTDATE=`date +%Y%m%d%H`
#CURRENTDATE=2015061204

ReceiptReversalFileName=SPWR_ReceiptReversals_$CURRENTDATE
RECEIPTSREVERSALHOME=/soadata/osg



INDIR=$RECEIPTSREVERSALHOME/inbound/ReceiptReversal
ARCDIR=$RECEIPTSREVERSALHOME/inbound/ReceiptReversal/archive
TEMPDIR=$RECEIPTSREVERSALHOME/inbound/ReceiptReversal/temp
LOGDIR=$RECEIPTSREVERSALHOME/inbound/ReceiptReversal/logs
LOGFILE=$LOGDIR/SchwabEncryption_$DATE.log
EMAILTO=SoaSupport@sunpowercorp.com


function quit {
exit
}


#Read Properties file
. /soadata/osg/scripts/conn.properties

#echo $username
#echo $password
#echo $hostname



echo 'lftp -u $username,$password sftp://$hostname/soadata/osg/test/ReceiptReversal/<< EOF' >> $TEMPDIR/ReceiptReversaltemp.sh

echo 'lcd $TEMPDIR' >> $TEMPDIR/ReceiptReversaltemp.sh

echo 'mget -E *.zip' >> $TEMPDIR/ReceiptReversaltemp.sh

echo 'bye' >> $TEMPDIR/ReceiptReversaltemp.sh

chmod 744 $TEMPDIR/ReceiptReversaltemp.sh

. $TEMPDIR/ReceiptReversaltemp.sh

rm $TEMPDIR/ReceiptReversaltemp.sh



unzip -n $TEMPDIR/'*.zip' -d $TEMPDIR


cp $TEMPDIR/*.csv $INDIR/

mv $TEMPDIR/*.zip $ARCDIR/

rm $TEMPDIR/*.csv


quit

