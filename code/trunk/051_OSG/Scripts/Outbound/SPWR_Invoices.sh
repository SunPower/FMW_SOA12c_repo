#!/bin/sh

#-----------------------------------------------------------------------#
#      Script : SPWR_SupplPaymnts                                       #
#      Author : Sriram                                          #
# Description : Put the zip file to OSG Server                          #     
#				that is outbound to Oracle.             #
#               zip the file and place it in outbound folder            #
#               for OSG Service                                         #
#                                                                       #
#-----------------------------------------------------------------------#

date

CURRENTDATE=`date +%Y%m%d%H`
#CURRENTDATE=2015070600

InvoiceFileName=SPWR_Invoices_$CURRENTDATE
InvoiceHOME=/soadata/osg
InvoicesFlag=0


INDIR=$InvoiceHOME/outbound/Invoices
ARCDIR=$InvoiceHOME/outbound/Invoices/archive
TEMPDIR=$InvoiceHOME/outbound/Invoices/temp
OUTDIR=/soadata/osg/test/Invoices
LOGDIR=$InvoiceHOME/outbound/Invoices/logs
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



ls $ARCDIR |grep $InvoiceFileName.zip
if [ $? = 0 ]; then
echo 'Invoices file already processed.'
export InvoicesFlag=1
fi

if [ $InvoicesFlag = 0 ]; then
ls $INDIR |grep $InvoiceFileName.csv
if [ $? = 0 ]; then


cp $INDIR/$InvoiceFileName.csv $TEMPDIR/$InvoiceFileName.csv

LINECOUNT=`wc -l  < "$TEMPDIR/$InvoiceFileName.csv"`

echo "Statement Count" $LINECOUNT

echo "FILE="$InvoiceFileName".csv PROC=SPDPDFONLY STMTS="`expr "$LINECOUNT" - 1` > $TEMPDIR/PROCESS.JOB

zip -j $TEMPDIR/$InvoiceFileName.zip $TEMPDIR/$InvoiceFileName.csv $TEMPDIR/PROCESS.JOB

fi



echo 'lftp -u $username,$password sftp://$hostname/<< EOF' >> $TEMPDIR/Invoicestemp.sh

echo 'lcd $TEMPDIR' >> $TEMPDIR/Invoicestemp.sh

echo 'reput $InvoiceFileName.zip' >> $TEMPDIR/Invoicestemp.sh

echo 'bye' >> $TEMPDIR/Invoicestemp.sh

chmod 744 $TEMPDIR/Invoicestemp.sh

. $TEMPDIR/Invoicestemp.sh

rm $TEMPDIR/Invoicestemp.sh

#echo -e "\n \n"

ls $INDIR |grep $InvoiceFileName.csv
if [ $? = 0 ]; then


#cp /soadata/osg/inbound/Receipts/temp/$InvoiceFileName.csv /soadata/osg/inbound/Receipts/$InvoiceFileName.csv

mv $INDIR/$InvoiceFileName.csv $ARCDIR/$InvoiceFileName.csv

mv $TEMPDIR/$InvoiceFileName.zip $ARCDIR/$InvoiceFileName.zip

rm $TEMPDIR/$InvoiceFileName.csv

rm $TEMPDIR/PROCESS.JOB

fi

fi

quit
