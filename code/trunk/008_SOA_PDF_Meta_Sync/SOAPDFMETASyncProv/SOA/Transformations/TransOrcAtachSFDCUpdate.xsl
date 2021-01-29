<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns1="urn:partner.soap.sforce.com" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:ns0="http://www.sunpowercorp.com/MergedOracleAttachmentSFDC" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns1 ns0 mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:ns10="http://www.sunpowercorp.com/Common/CommonDataTypes/V1"
                xmlns:ns4="http://www.sunpowercorp.com/MergedSFDC"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns6="http://www.sunpowercorp.com/MergedOracleSFDC"
                xmlns:ns7="http://www.sunpowercorp.com/MergedAttachmentSFDC"
                xmlns:client="http://www.sunpowercorp.com/PDFFTPSalesforceT0042/SOAPDFMETASyncProv/SOAPDFMETASyncProv_BPEL"
                xmlns:ns8="http://www.pdf_meta_sync_params.org"
                xmlns:ns3="http://www.sunpowercorp.com/BOD/ProcessPDFFTPSalesForce/V1"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:ns9="http://www.sunpowercorp.com/Common/PDFFTPSalesForceCommonTypes/V1"
                xmlns:ns2="http://schemas.xmlsoap.org/ws/2003/03/addressing"
                xmlns:ns5="http://schemas.oracle.com/bpel/extension" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns11="http://www.sunpowercorp.com/Noun/PDFFTPSalesForce/V1"
                xmlns:fns="urn:fault.partner.soap.sforce.com"
                xmlns:ns12="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1"
                xmlns:ens="urn:sobject.partner.soap.sforce.com">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../SOAPDFMETASyncProv_BPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="MergedOracleAttachmentSFDCRows" namespace="http://www.sunpowercorp.com/MergedOracleAttachmentSFDC"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../partner.wsdl"/>
            <oracle-xsl-mapper:rootElement name="queryResponse" namespace="urn:partner.soap.sforce.com"/>
            <oracle-xsl-mapper:param name="InvSFDCQuery_OutputVariable.parameters"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../partner.wsdl"/>
            <oracle-xsl-mapper:rootElement name="update" namespace="urn:partner.soap.sforce.com"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [THU MAY 02 19:32:37 IST 2019].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="InvSFDCQuery_OutputVariable.parameters"/>
   <xsl:template match="/">
      <ns1:update>
         <xsl:for-each select="/ns0:MergedOracleAttachmentSFDCRows/ns0:row">
            <ns1:sObjects>
               <ens:type>
            <xsl:text disable-output-escaping="no">SOA2TransactionDetails__c</xsl:text>
          </ens:type>
          <ens:Transaction_Type__c>
            <xsl:value-of select="ns0:TRX_TYPE_MEANING"/>
          </ens:Transaction_Type__c>
          <ens:Transaction_Date__c>
            <xsl:value-of select="ns0:TRX_DATE"/>
          </ens:Transaction_Date__c>
          <!--ens:Partner__c>
          <xsl:value-of select="ns0:SFDC_ACCOUNT_ID"/>
        </ens:Partner__c-->
        <ens:Doc_No__c>
          <xsl:value-of select="concat(substring-before(ns0:PDF_FILE_NAME,'.pdf'),'_',ns0:SFDC_ACCOUNT_ID,'.pdf')"/>
          <!--xsl:value-of select="ns0:PDF_FILE_NAME"/-->
        </ens:Doc_No__c>
        <ens:Customer_Number__c>
          <xsl:value-of select="ns0:CUSOMER_NUMBER"/>
        </ens:Customer_Number__c>
            
               <ens:Attachment_Id__c>
                  <xsl:value-of select="ns0:SFDC_ATTACHMENT_ID"/>
               </ens:Attachment_Id__c>
               <ens:Id>
                  <xsl:value-of select="$InvSFDCQuery_OutputVariable.parameters/ns1:queryResponse/ns1:result/ns1:records/ens:Id"/>
               </ens:Id>
            </ns1:sObjects>
         </xsl:for-each>
      </ns1:update>
   </xsl:template>
</xsl:stylesheet>