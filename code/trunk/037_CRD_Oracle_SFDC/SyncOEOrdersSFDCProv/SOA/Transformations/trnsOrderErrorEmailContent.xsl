<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/updateOrderHeaderStatus" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ns8="http://www.sunpowercorp.com/Common/SyncOEOrdersCommonTypes/V1" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns4="http://www.sunpowercorp.com/SunPowerDevelopment/initParams/xsd/v1" xmlns:ns2="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessSyncOEOrders/V1" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns6="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns5="http://www.sunpowercorp.com/SunPowerDevelopment/utility/BatchEmailUtilityService/xsd/V1" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns7="http://www.sunpowercorp.com/Noun/SyncOEOrders/V1" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/SyncOEOrdersOracleToSFDC/SyncOEOrdersSFDCProv/updateOrderHeaderStatus" xmlns:client="http://www.sunpowercorp.com/SyncOEOrdersOracleToSFDC/SyncOEOrdersSFDCProv/SyncOEOrdersSFDCProv_BPEL" xmlns:ns3="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl top plt wsdl xsd tns ns0 ns8 ns4 ns2 ns1 ns6 ns5 ns7 client ns3 aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/updateOrderHeaderStatus.wsdl"/>
            <oracle-xsl-mapper:rootElement name="XxspwrOmHeaderSyncCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/updateOrderHeaderStatus"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/SyncOEOrdersSFDCProv_BPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="EmailContent" namespace="http://www.sunpowercorp.com/SunPowerDevelopment/utility/BatchEmailUtilityService/xsd/V1"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [TUE OCT 11 14:37:59 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
   <ns5:EmailContent>
      <ns5:To>
        <xsl:text disable-output-escaping="no"/>
      </ns5:To>
      <ns5:Subject>
        <xsl:text disable-output-escaping="no"/>
      </ns5:Subject>
      <xsl:variable name="tableHeader" select="&quot;&lt;table border='1'>&lt;tr>&lt;th bgcolor='#C0C0C0'>&lt;b>Header ID&lt;/b>&lt;/th> &lt;th bgcolor='#C0C0C0'>&lt;b>Fault Message&lt;/b>&lt;/th> &lt;/tr> &quot;"/>
      <xsl:variable name="tableBody">
        <xsl:for-each select="/top:XxspwrOmHeaderSyncCollection/top:XxspwrOmHeaderSync[top:soaFlag = &quot;E&quot;]">
          <xsl:variable name="index" select="position()"/>
          <xsl:value-of select="concat(&quot;&lt;tr>&lt;td>&quot;,top:headerId,&quot;&lt;/td>&lt;td>&quot;,top:soaErrormsg,&quot;&lt;/td>&lt;/tr>&quot;)"/>
        </xsl:for-each>
      </xsl:variable>
      <ns5:body>
        <xsl:value-of select="concat($tableHeader,$tableBody,&quot;&lt;/table> &lt;br/> &lt;i> Note: This message was automatically generated, please do not reply to it &lt;/i> &lt;br/>&lt;br/>&lt;b>Thanks &amp; Regards&lt;/b>&lt;br/>System Admin&quot;)"/>
      </ns5:body>
    </ns5:EmailContent>
  </xsl:template>
</xsl:stylesheet>