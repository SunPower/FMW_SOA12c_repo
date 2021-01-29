<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns0="http://www.sunpowercorp.com/Noun/ACBClaimToSFDC/V1" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns6="http://www.sunpowercorp.com/ACBAccountClaimToSFDCDetails" xmlns:ns9="http://www.sunpowercorp.com/Common/ACBClaimToSFDCCommonTypes/V1" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns10="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessACBClaimToSFDC/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns7="http://www.sunpowercorp.com/SunPowerDevelopment/DealerPartnerCreditINFO/EnqueSyncCreditHoldLimit/initParams/xsd/v1" xmlns:ns2="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns8="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns5="http://www.sunpowercorp.com/ACBClaimToSFDCMergeDetails" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns4="http://www.sunpowercorp.com/ACBClaimToSFDCDetails" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:client="http://www.sunpowercorp.com/MarketingNTrainingActAppClmACBToSFDC/ACBGetAllClaimsmergeProv/ACBGetAllClaimsmergeProv_BPEL" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns3="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 ns6 ns9 ns10 ns1 plnk wsdl ns7 ns2 ns8 ns5 ns4 client xsd ns3 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/ACBGetAllClaimsmergeProv_BPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ACBAccountClaimToSFDCRows" namespace="http://www.sunpowercorp.com/ACBAccountClaimToSFDCDetails"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/ACBGetAllClaimsmergeProv_BPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ACBClaimToSFDCMergeRows" namespace="http://www.sunpowercorp.com/ACBClaimToSFDCMergeDetails"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [FRI OCT 07 17:20:42 IST 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <ns5:ACBClaimToSFDCMergeRows>
      <ns5:row>
        <ns5:ACB_Paranet_ID__c>
          <xsl:for-each select="/ns6:ACBAccountClaimToSFDCRows/ns6:row">
            <xsl:value-of select="concat(&quot;'&quot;,ns6:ACB_Paranet_ID__c,&quot;'&quot;,&quot;,&quot;)"/>
          </xsl:for-each>
        </ns5:ACB_Paranet_ID__c>
      </ns5:row>
    </ns5:ACBClaimToSFDCMergeRows>
  </xsl:template>
</xsl:stylesheet>