<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns5="http://www.sunpowercorp.com/MergedOracleSFDC" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns11="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns2="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns8="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:ns7="http://www.sunpowercorp.com/MergedOracleAttachmentSFDC" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://www.sunpowercorp.com/PDFFTPSalesforceT0042/SOAPDFMETASyncProv/SOAPDFMETASyncProv_BPEL" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns9="http://www.sunpowercorp.com/Common/PDFFTPSalesForceCommonTypes/V1" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:client="http://www.sunpowercorp.com/SunPowerApp/SFDCLogin/SFDCLogin_BPEL" xmlns:ns6="http://www.sunpowercorp.com/MergedAttachmentSFDC" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns10="http://www.sunpowercorp.com/Noun/PDFFTPSalesForce/V1" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns3="http://schemas.oracle.com/bpel/extension" xmlns:ns4="http://www.sunpowercorp.com/MergedSFDC" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessPDFFTPSalesForce/V1" xmlns:tns="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl plnk soap wsdl ens fns client xsd tns ns5 ns11 ns2 ns8 ns7 ns0 ns9 ns6 ns10 ns3 ns4 ns1 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../partner.wsdl"/>
            <oracle-xsl-mapper:rootElement name="queryResponse" namespace="urn:partner.soap.sforce.com"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="http://dev-fusappdca02.sunpowercorp.com:7003/soa-infra/services/default/SFDCLogin!1.0/SFDCLogin_BPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="SFDCLoginResp" namespace="http://www.sunpowercorp.com/SunPowerApp/SFDCLogin/SFDCLogin_BPEL"/>
            <oracle-xsl-mapper:param name="InvokeSFDCLogin_OutputVariable.payload"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../SOAPDFMETASyncProv_BPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="MergedSFDCRows" namespace="http://www.sunpowercorp.com/MergedSFDC"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [THU OCT 06 10:31:19 IST 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="InvokeSFDCLogin_OutputVariable.payload"/>
  <xsl:template match="/">
    <ns4:MergedSFDCRows>
      <xsl:for-each select="/tns:queryResponse/tns:result/tns:records">
        <ns4:row>
          <ns4:CUSOMER_NUMBER>
            <xsl:value-of select="ens:Oracle_Account_Number__c"/>
          </ns4:CUSOMER_NUMBER>
          <ns4:SFDC_ACCOUNT_ID>
            <xsl:value-of select="ens:Id"/>
          </ns4:SFDC_ACCOUNT_ID>
          <ns4:SFDC_ACCOUNT_NAME>
            <xsl:value-of select="ens:Name"/>
          </ns4:SFDC_ACCOUNT_NAME>
          <ns4:SFDC_USER_ID>
            <xsl:value-of select="$InvokeSFDCLogin_OutputVariable.payload/client:SFDCLoginResp/client:userId"/>
          </ns4:SFDC_USER_ID>
        </ns4:row>
      </xsl:for-each>
    </ns4:MergedSFDCRows>
  </xsl:template>
</xsl:stylesheet>