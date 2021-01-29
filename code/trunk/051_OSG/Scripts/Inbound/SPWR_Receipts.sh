#!/bin/sh

#-----------------------------------------------------------------------#
#      Script : SPWR_Receipts                                           #
#      Author : Surya Prakash                                           #
# Description : Get the zip file from OSG Server                        #   
#				that is inbound to Oracle.              #
#               unzip the file and place it in inbound folder           #
#               for SOA Service to process the file                     #
#                                                                       #
#-----------------------------------------------------------------------#

date

CURRENTDATE=`date +%Y%m%d%H`
#CURRENTDATE=2015061204

ReceiptsFileName=SPWR_Receipts_$CURRENTDATE
RECEIPTSHOME=/soadata/osg



INDIR=$RECEIPTSHOME/inbound/Receipts
ARCDIR=$RECEIPTSHOME/inbound/Receipts/archive
TEMPDIR=$RECEIPTSHOME/inbound/Receipts/temp
LOGDIR=$RECEIPTSHOME/inbound/Receipts/logs
LOGFILE=$LOGDIR/SchwabEncryption_$DATE.log
EMAILTO=SoaSupport@sunpowercorp.com

#Read Properties file
. /soadata/osg/scripts/conn.properties

#echo $username
#echo $password
#echo $hostname

function quit {
exit
}



echo 'lftp -u $username,$password sftp://$hostname/soadata/osg/test/Receipts/<< EOF' >> $TEMPDIR/Receiptstemp.sh

echo 'lcd $TEMPDIR' >> $TEMPDIR/Receiptstemp.sh

echo 'mget -E *.zip' >> $TEMPDIR/Receiptstemp.sh

echo 'bye' >> $TEMPDIR/Receiptstemp.sh

chmod 744 $TEMPDIR/Receiptstemp.sh

. $TEMPDIR/Receiptstemp.sh

rm $TEMPDIR/Receiptstemp.sh

#echo -e "\n \n"



unzip -n $TEMPDIR/'*.zip' -d $TEMPDIR


cp $TEMPDIR/*.csv $INDIR/

mv $TEMPDIR/*.zip $ARCDIR/

rm $TEMPDIR/*.csv





quit

