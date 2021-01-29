<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/EDICom/Publish888OracleToEDICom/PollNewBatchesFromPartnerTab" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/file/EDICom/Publish888OracleToEDICom/writeFileToSOADir" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:imp1="http://sunpowercorp.com/Publish888OracleToEDICom/writeFileToSOADir/xsd/v1" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/GetDetailsFromOBDataTab" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns1="http://www.sunpowercorp.com/utilities/indexparams/xsd/v1" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/PollNewBatchesFromPartnerTab" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/EDICom/Publish888OracleToEDICom/GetDetailsFromOBDataTab" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 plt wsdl db ns1 xsd top tns ns2 imp1 jca xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../GetDetailsFromOBDataTab.wsdl"/>
            <oracle-xsl-mapper:rootElement name="GetDetailsFromOBDataTabOutputCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/GetDetailsFromOBDataTab"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../PollNewBatchesFromPartnerTab.wsdl"/>
            <oracle-xsl-mapper:rootElement name="params" namespace="http://www.sunpowercorp.com/utilities/indexparams/xsd/v1"/>
            <oracle-xsl-mapper:param name="indexParam"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../writeFileToSOADir.wsdl"/>
            <oracle-xsl-mapper:rootElement name="Records" namespace="http://sunpowercorp.com/Publish888OracleToEDICom/writeFileToSOADir/xsd/v1"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [WED OCT 05 15:20:41 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="indexParam"/>
  <xsl:template match="/">
    <imp1:Records>
      <xsl:for-each select="/db:GetDetailsFromOBDataTabOutputCollection/db:GetDetailsFromOBDataTabOutput">
        <imp1:record>
          <imp1:REGION>
            <xsl:value-of select="$indexParam/ns1:params/ns1:Region"/>
          </imp1:REGION>
          <imp1:PURPOSE_CODE>
            <xsl:value-of select="db:PURPOSE_CODE"/>
          </imp1:PURPOSE_CODE>
          <imp1:ITEM_NUMBER>
            <xsl:value-of select="db:ITEM_NUMBER"/>
          </imp1:ITEM_NUMBER>
          <imp1:PRODUCT_TYPE>
            <xsl:value-of select="db:PRODUCT_TYPE"/>
          </imp1:PRODUCT_TYPE>
          <imp1:ITEM_DESCRIPTION>
            <xsl:value-of select="db:ITEM_DESCRIPTION"/>
          </imp1:ITEM_DESCRIPTION>
          <imp1:ITEM_STATUS>
            <xsl:value-of select="db:ITEM_STATUS"/>
          </imp1:ITEM_STATUS>
          <imp1:UNIT_WEIGHT>
            <xsl:value-of select="db:UNIT_WEIGHT"/>
          </imp1:UNIT_WEIGHT>
          <imp1:WEIGHT_UOM_CODE>
            <xsl:value-of select="db:WEIGHT_UOM_CODE"/>
          </imp1:WEIGHT_UOM_CODE>
          <imp1:UNIT_LENGTH>
            <xsl:value-of select="db:UNIT_LENGTH"/>
          </imp1:UNIT_LENGTH>
          <imp1:UNIT_WIDTH>
            <xsl:value-of select="db:UNIT_WIDTH"/>
          </imp1:UNIT_WIDTH>
          <imp1:UNIT_HEIGHT>
            <xsl:value-of select="db:UNIT_HEIGHT"/>
          </imp1:UNIT_HEIGHT>
          <imp1:DIMENSION>
            <xsl:value-of select="db:DIMENSION_UOM_CODE"/>
          </imp1:DIMENSION>
          <imp1:PRIMARY_UOM_CODE>
            <xsl:value-of select="db:PRIMARY_UOM_CODE"/>
          </imp1:PRIMARY_UOM_CODE>
          <imp1:HTS_CODE>
            <xsl:value-of select="db:HTS_CODE"/>
          </imp1:HTS_CODE>
          <imp1:ATTRIBUTE1>
            <xsl:value-of select="db:ATTRIBUTE1"/>
          </imp1:ATTRIBUTE1>
          <imp1:ATTRIBUTE2>
            <xsl:value-of select="db:ATTRIBUTE2"/>
          </imp1:ATTRIBUTE2>
          <imp1:ATTRIBUTE3>
            <xsl:value-of select="db:ATTRIBUTE3"/>
          </imp1:ATTRIBUTE3>
          <imp1:ATTRIBUTE4>
            <xsl:value-of select="db:ATTRIBUTE4"/>
          </imp1:ATTRIBUTE4>
          <imp1:ATTRIBUTE5>
            <xsl:value-of select="db:ATTRIBUTE5"/>
          </imp1:ATTRIBUTE5>
          <imp1:BATCH_ID>
            <xsl:value-of select="db:BATCH_ID"/>
          </imp1:BATCH_ID>
           <imp1:UNIT_COST>
            <xsl:value-of select="db:UNIT_COST"/>
          </imp1:UNIT_COST>
        </imp1:record>
      </xsl:for-each>
    </imp1:Records>
  </xsl:template>
</xsl:stylesheet>