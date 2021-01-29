#!/bin/sh

#-----------------------------------------------------------------------#
#      Script : SPWR_SupplPaymntReversal                                #
#      Author : Surya Prakash                                           #
# Description : Put the zip file to OSG Server                          #     
#				that is outbound to Oracle.             #
#               zip the file and place it in outbound folder            #
#               for OSG Service                                         #
#                                                                       #
#-----------------------------------------------------------------------#

date

CURRENTDATE=`date +%Y%m%d%H`
#CURRENTDATE=2015061905

SupplPaymntRevFileName=SPWR_SupplementPaymentReversals_$CURRENTDATE
SupplPaymntRevHOME=/soadata/osg
SupplPaymntRevFlag=0


INDIR=$SupplPaymntRevHOME/outbound/SupplPaymntReversal
ARCDIR=$SupplPaymntRevHOME/outbound/SupplPaymntReversal/archive
TEMPDIR=$SupplPaymntRevHOME/outbound/SupplPaymntReversal/temp
OUTDIR=/soadata/osg/test/SupplPaymntReversal
LOGDIR=$SupplPaymntRevHOME/outbound/SupplPaymntReversal/logs
#LOGFILE=$LOGDIR/SchwabEncryption_$DATE.log
EMAILTO=SoaSupport@sunpowercorp.com


function quit {
exit
}

#Read Properties file
. /soadata/osg/scripts/conn.properties

#echo $username
#echo $password
#echo $hostname


ls $ARCDIR |grep $SupplPaymntRevFileName.zip
if [ $? = 0 ]; then
echo 'Supplement Payment Reversal file already processed.'
export SupplPaymntRevFlag=1
fi


if [ $SupplPaymntRevFlag = 0 ]; then

ls $INDIR |grep $SupplPaymntRevFileName.csv
if [ $? = 0 ]; then


cp $INDIR/$SupplPaymntRevFileName.csv $TEMPDIR/$SupplPaymntRevFileName.csv

zip -j $TEMPDIR/$SupplPaymntRevFileName.zip $TEMPDIR/$SupplPaymntRevFileName.csv

fi



echo 'lftp -u $username,$password sftp://$hostname/soadata/osg/test/SupplPaymntReversal/<< EOF' >> $TEMPDIR/SupplPaymntReversaltemp.sh

echo 'lcd $TEMPDIR' >> $TEMPDIR/SupplPaymntReversaltemp.sh

echo 'reput $SupplPaymntRevFileName.zip' >> $TEMPDIR/SupplPaymntReversaltemp.sh

echo 'bye' >> $TEMPDIR/SupplPaymntReversaltemp.sh

chmod 744 $TEMPDIR/SupplPaymntReversaltemp.sh

. $TEMPDIR/SupplPaymntReversaltemp.sh

rm $TEMPDIR/SupplPaymntReversaltemp.sh

#echo -e "\n \n"

ls $INDIR |grep $SupplPaymntRevFileName.csv
if [ $? = 0 ]; then




mv $INDIR/$SupplPaymntRevFileName.csv $ARCDIR/$SupplPaymntRevFileName.csv

mv $TEMPDIR/$SupplPaymntRevFileName.zip $ARCDIR/$SupplPaymntRevFileName.zip

rm $TEMPDIR/$SupplPaymntRevFileName.csv

fi

fi

quit
