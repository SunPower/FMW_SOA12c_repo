<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/WarrantyRegistrationOracleToSFDC/WarrantyORACLEToSFDCReq/UpdateOrcDBData" xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/WarrantyRegistrationOracleToSFDC/WarrantyORACLEToSFDCReq/PollOracleEBSDataDB" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/WarrantyRegistrationOracleToSFDC/WarrantyORACLEToSFDCReq/PollOracleDBData" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/PollOracleEBSDataDB" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateOrcDBData" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns2 plt wsdl top xsd ns0 ns1 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../PollOracleEBSDataDB.wsdl"/>
            <oracle-xsl-mapper:rootElement name="SalesOrdDetCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/PollOracleEBSDataDB"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../UpdateOrcDBData.wsdl"/>
            <oracle-xsl-mapper:rootElement name="SalesOrdDetCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateOrcDBData"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [THU OCT 06 10:15:41 IST 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <ns1:SalesOrdDetCollection>
      <xsl:for-each select="/top:SalesOrdDetCollection/top:SalesOrdDet">
        <ns1:SalesOrdDet>
          <ns1:no>
            <xsl:value-of select="/top:SalesOrdDetCollection/top:SalesOrdDet/top:no"/>
          </ns1:no>
          <ns1:sfdcStatus>
            <xsl:text disable-output-escaping="no">ERROR</xsl:text>
          </ns1:sfdcStatus>
          <ns1:sfdcDatePushed>
            <xsl:value-of select="xp20:current-dateTime()"/>
          </ns1:sfdcDatePushed>
          <ns1:sfdcRemarks>
            <xsl:text disable-output-escaping="no">ERROR</xsl:text>
          </ns1:sfdcRemarks>
        </ns1:SalesOrdDet>
      </xsl:for-each>
    </ns1:SalesOrdDetCollection>
  </xsl:template>
</xsl:stylesheet>