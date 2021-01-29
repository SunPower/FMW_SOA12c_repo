<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/SunPowerDevelopment/ArenaOracleItemsBOMSubstituesProv/processItemtoEBS" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/processItemtoEBS" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tns plt xsd wsdl top bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../processItemtoEBS.wsdl"/>
            <oracle-xsl-mapper:rootElement name="XxspwrArenaItemsCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/processItemtoEBS"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../processItemtoEBS.wsdl"/>
            <oracle-xsl-mapper:rootElement name="XxspwrArenaItemsCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/processItemtoEBS"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [TUE OCT 04 15:42:23 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <top:XxspwrArenaItemsCollection>
      <xsl:for-each select="/top:XxspwrArenaItemsCollection/top:XxspwrArenaItems">
        <top:XxspwrArenaItems>
          <top:itemId>
            <xsl:value-of select="top:itemId"/>
          </top:itemId>
          <top:documentIdentifier>
            <xsl:value-of select="top:documentIdentifier"/>
          </top:documentIdentifier>
          <top:processFlag>
            <xsl:text disable-output-escaping="no">99</xsl:text>
          </top:processFlag>
          <top:setProcessId>
            <xsl:value-of select="top:setProcessId"/>
          </top:setProcessId>
        </top:XxspwrArenaItems>
      </xsl:for-each>
    </top:XxspwrArenaItemsCollection>
  </xsl:template>
</xsl:stylesheet>