<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns3="http://www.sunpowercorp.com/ArenaOracleItemsBOMSubstituesProv/xsd/OrgAssignments/V1" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns7="http://www.sunpowercorp.com/Common/ArenaOracleDataFeedDetailsCommonTypes/V1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns5="http://www.sunpowercorp.com/ArenaOracleItemsBOMSubstituesProv/xsd/Categories/V1" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:client="http://www.sunpowercorp.com/SunPowerDevelopment/ArenaOracleItemsBOMSubstituesProv/ArenaOracleItemsBOMSubstituesProv_BPEL" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/processArenaCategoriesToEBS" xmlns:ns4="http://www.sunpowercorp.com/ArenaOracleItemsBOMSubstituesProv/xsd/ListOfVendorsArenaAsls/V1" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns6="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/ArenaOracleDataFeed/ArenaOracleItemsBOMSubstituesProv/processArenaCategoriesToEBS" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns2="http://www.sunpowercorp.com/ArenaOracleItemsBOMSubstituesProv/xsd/defaultParams/V1" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessArenaOracleDataFeed/V1" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns8="http://www.sunpowercorp.com/Noun/ArenaOracleDataFeed/V1" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns3 ns7 ns0 plnk wsdl ns5 client ns4 ns6 ns2 ns1 xsd ns8 top tns xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:ns9="http://schemas.oracle.com/bpel/extension">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../ArenaOracleItemsBOMSubstituesProv_BPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="Categories" namespace="http://www.sunpowercorp.com/ArenaOracleItemsBOMSubstituesProv/xsd/Categories/V1"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../ArenaOracleItemsBOMSubstituesProv_BPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="defaultParams" namespace="http://www.sunpowercorp.com/ArenaOracleItemsBOMSubstituesProv/xsd/defaultParams/V1"/>
            <oracle-xsl-mapper:param name="defaultParams"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../processArenaCategoriesToEBS.wsdl"/>
            <oracle-xsl-mapper:rootElement name="XxspwrArenaCategoriesCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/processArenaCategoriesToEBS"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [TUE OCT 04 15:42:23 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="defaultParams"/>
  <xsl:template match="/">
    <top:XxspwrArenaCategoriesCollection>
      <xsl:for-each select="/ns5:Categories/ns5:Category">
        <top:XxspwrArenaCategories>
          <top:itemId>
            <xsl:value-of select="$defaultParams/ns2:defaultParams/ns2:itemId"/>
          </top:itemId>
          <top:lastUpdateDate>
            <xsl:value-of select="xp20:current-dateTime()"/>
          </top:lastUpdateDate>
          <top:lastUpdatedBy>
            <xsl:text disable-output-escaping="no">-9999</xsl:text>
          </top:lastUpdatedBy>
          <top:creationDate>
            <xsl:value-of select="xp20:current-dateTime()"/>
          </top:creationDate>
          <top:createdBy>
            <xsl:text disable-output-escaping="no">-9999</xsl:text>
          </top:createdBy>
          <top:processFlag>
            <xsl:text disable-output-escaping="no">1</xsl:text>
          </top:processFlag>
          <top:categorySetName>
            <xsl:value-of select="ns5:Category_SetName"/>
          </top:categorySetName>
          <top:categoryName>
            <xsl:value-of select="ns5:Category_Name"/>
          </top:categoryName>
          <top:setProcessId>
            <xsl:value-of select="$defaultParams/ns2:defaultParams/ns2:processId"/>
          </top:setProcessId>
        </top:XxspwrArenaCategories>
      </xsl:for-each>
    </top:XxspwrArenaCategoriesCollection>
  </xsl:template>
</xsl:stylesheet>