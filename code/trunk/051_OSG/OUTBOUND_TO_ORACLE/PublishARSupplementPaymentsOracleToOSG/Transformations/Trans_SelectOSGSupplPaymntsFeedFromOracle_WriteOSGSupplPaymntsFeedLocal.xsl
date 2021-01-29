<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/file/OSG/PublishARSupplementPaymentsOracleToOSG/WriteOSGSupplPaymntsFeedToLocal" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/OSG/PublishARSupplementPaymentsOracleToOSG/SelectOSGSupplPaymntsFeedFromOracle" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/SelectOSGSupplPaymntsFeedFromOracle" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:imp1="http://TargetNamespace.com/WriteOSGSupplPaymntsFeedToLocal" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tns plt wsdl db xsd ns0 imp1 jca xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/SelectOSGSupplPaymntsFeedFromOracle.wsdl"/>
            <oracle-xsl-mapper:rootElement name="SelectOSGSupplPaymntsFeedFromOracleOutputCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/SelectOSGSupplPaymntsFeedFromOracle"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/WriteOSGSupplPaymntsFeedToLocal.wsdl"/>
            <oracle-xsl-mapper:rootElement name="OSGSupplPaymnts" namespace="http://TargetNamespace.com/WriteOSGSupplPaymntsFeedToLocal"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [THU OCT 06 19:26:11 IST 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <imp1:OSGSupplPaymnts>
      <xsl:for-each select="/db:SelectOSGSupplPaymntsFeedFromOracleOutputCollection/db:SelectOSGSupplPaymntsFeedFromOracleOutput">
        <imp1:OSGSupplPaymntsFeed>
          <imp1:ACCOUNT_NUMBER>
            <xsl:value-of select="db:ACCOUNT_NUMBER"/>
          </imp1:ACCOUNT_NUMBER>
          <imp1:TRX_NUMBER>
            <xsl:value-of select="db:TRX_NUMBER"/>
          </imp1:TRX_NUMBER>
          <imp1:PAYMENT_DATE>
            <xsl:value-of select="xp20:format-dateTime(db:PAYMENT_DATE,'[Y0001]/[M01]/[D01]')"/>
          </imp1:PAYMENT_DATE>
          <imp1:RECEIPT_AMOUNT>
            <xsl:value-of select="format-number(db:RECEIPT_AMOUNT, '#.00')"/>
          </imp1:RECEIPT_AMOUNT>
          <imp1:PAYMENT_TYPE>
            <xsl:value-of select="db:PAYMENT_TYPE"/>
          </imp1:PAYMENT_TYPE>
          <imp1:PAYMENT_SUB_TYPE>
            <xsl:value-of select="db:PAYMENT_SUB_TYPE"/>
          </imp1:PAYMENT_SUB_TYPE>
          <imp1:PAYMENT_ACC_LAST4>
            <xsl:value-of select="db:PAYMENT_ACC_LAST4"/>
          </imp1:PAYMENT_ACC_LAST4>
        </imp1:OSGSupplPaymntsFeed>
      </xsl:for-each>
    </imp1:OSGSupplPaymnts>
  </xsl:template>
</xsl:stylesheet>