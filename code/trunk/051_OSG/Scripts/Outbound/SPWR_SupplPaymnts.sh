#!/bin/sh

#-----------------------------------------------------------------------#
#      Script : SPWR_SupplPaymnts                                       #
#      Author : Surya Prakash                                           #
# Description : Put the zip file to OSG Server                          #     
#				that is outbound to Oracle.             #
#               zip the file and place it in outbound folder            #
#               for OSG Service                                         #
#                                                                       #
#-----------------------------------------------------------------------#

date

CURRENTDATE=`date +%Y%m%d%H`
#CURRENTDATE=2015062523

SupplPaymntsFileName=SPWR_SupplementPayments_$CURRENTDATE
SupplPaymntsHOME=/soadata/osg
SupplPaymntsFlag=0


INDIR=$SupplPaymntsHOME/outbound/SupplPaymnts
ARCDIR=$SupplPaymntsHOME/outbound/SupplPaymnts/archive
TEMPDIR=$SupplPaymntsHOME/outbound/SupplPaymnts/temp
OUTDIR=/soadata/osg/test/SupplPaymnts
LOGDIR=$SupplPaymntsHOME/outbound/SupplPaymnts/logs
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


ls $ARCDIR |grep $SupplPaymntsFileName.zip
if [ $? = 0 ]; then
echo 'Supplement Payments file already processed.'
export SupplPaymntsFlag=1
fi


if [ $SupplPaymntsFlag = 0 ]; then

ls $INDIR |grep $SupplPaymntsFileName.csv
if [ $? = 0 ]; then


cp $INDIR/$SupplPaymntsFileName.csv $TEMPDIR/$SupplPaymntsFileName.csv

zip -j $TEMPDIR/$SupplPaymntsFileName.zip $TEMPDIR/$SupplPaymntsFileName.csv

fi



echo 'lftp -u $username,$password sftp://$hostname/soadata/osg/test/SupplPaymnts/<< EOF' >> $TEMPDIR/SupplPaymntstemp.sh

echo 'lcd $TEMPDIR' >> $TEMPDIR/SupplPaymntstemp.sh

echo 'reput $SupplPaymntsFileName.zip' >> $TEMPDIR/SupplPaymntstemp.sh

echo 'bye' >> $TEMPDIR/SupplPaymntstemp.sh

chmod 744 $TEMPDIR/SupplPaymntstemp.sh

. $TEMPDIR/SupplPaymntstemp.sh

rm $TEMPDIR/SupplPaymntstemp.sh

#echo -e "\n \n"

ls $INDIR |grep $SupplPaymntsFileName.csv
if [ $? = 0 ]; then


#cp /soadata/osg/inbound/Receipts/temp/$ReceiptsFileName.csv /soadata/osg/inbound/Receipts/$ReceiptsFileName.csv

mv $INDIR/$SupplPaymntsFileName.csv $ARCDIR/$SupplPaymntsFileName.csv

mv $TEMPDIR/$SupplPaymntsFileName.zip $ARCDIR/$SupplPaymntsFileName.zip

rm $TEMPDIR/$SupplPaymntsFileName.csv

fi

fi

quit
