<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns5="http://www.sunpowercorp.com/MergedOracleSFDC" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns10="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns2="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns0="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns7="http://www.sunpowercorp.com/MergedOracleAttachmentSFDC" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:client="http://www.sunpowercorp.com/PDFFTPSalesforceT0042/SOAPDFMETASyncProv/SOAPDFMETASyncProv_BPEL" xmlns:ns8="http://www.sunpowercorp.com/Common/PDFFTPSalesForceCommonTypes/V1" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ns6="http://www.sunpowercorp.com/MergedAttachmentSFDC" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns9="http://www.sunpowercorp.com/Noun/PDFFTPSalesForce/V1" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns3="http://schemas.oracle.com/bpel/extension" xmlns:ns4="http://www.sunpowercorp.com/MergedSFDC" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessPDFFTPSalesForce/V1" xmlns:tns="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns5 ns10 plnk wsdl ns2 ns0 ns7 client ns8 ns6 ns9 xsd ns3 ns4 ns1 soap ens fns tns xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:ns11="http://www.pdf_meta_sync_params.org"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../SOAPDFMETASyncProv_BPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="MergedOracleAttachmentSFDCRows" namespace="http://www.sunpowercorp.com/MergedOracleAttachmentSFDC"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../partner.wsdl"/>
            <oracle-xsl-mapper:rootElement name="upsert" namespace="urn:partner.soap.sforce.com"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [THU OCT 06 10:31:19 IST 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <tns:upsert>
      <tns:externalIDFieldName>
        <xsl:text disable-output-escaping="no">Doc_No__c</xsl:text>
      </tns:externalIDFieldName>
      <xsl:for-each select="/ns7:MergedOracleAttachmentSFDCRows/ns7:row">
        <tns:sObjects>
          <ens:type>
            <xsl:text disable-output-escaping="no">SOA2TransactionDetails__c</xsl:text>
          </ens:type>
          <ens:Transaction_Type__c>
            <xsl:value-of select="ns7:TRX_TYPE_MEANING"/>
          </ens:Transaction_Type__c>
          <ens:Transaction_Date__c>
            <xsl:value-of select="ns7:TRX_DATE"/>
          </ens:Transaction_Date__c>
          <ens:Partner__c>
            <xsl:value-of select="ns7:SFDC_ACCOUNT_ID"/>
          </ens:Partner__c>
          <ens:Doc_No__c>
            <xsl:value-of select="ns7:PDF_FILE_NAME"/>
          </ens:Doc_No__c>
          <ens:Customer_Number__c>
            <xsl:value-of select="ns7:CUSOMER_NUMBER"/>
          </ens:Customer_Number__c>
          <ens:Attachment_Id__c>
            <xsl:value-of select="ns7:SFDC_ATTACHMENT_ID"/>
          </ens:Attachment_Id__c>
        </tns:sObjects>
      </xsl:for-each>
    </tns:upsert>
  </xsl:template>
</xsl:stylesheet>