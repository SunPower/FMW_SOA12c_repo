<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/file/SOA_DEV/PublishARInvoiceOracleToOSG/WriteOSGINVFeedToLocal" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/SelectOSGINVFeedFromOracle" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:imp1="http://www.sunpowercorp.com/WriteOSGINVFeedToLocal" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/SOA_DEV/PublishARInvoiceOracleToOSG/SelectOSGINVFeedFromOracle" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl plt wsdl db xsd tns ns0 jca imp1 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/SelectOSGINVFeedFromOracle.wsdl"/>
            <oracle-xsl-mapper:rootElement name="SelectOSGINVFeedFromOracleOutputCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/SelectOSGINVFeedFromOracle"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/WriteOSGINVFeedToLocal.wsdl"/>
            <oracle-xsl-mapper:rootElement name="OSGINV" namespace="http://www.sunpowercorp.com/WriteOSGINVFeedToLocal"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [THU OCT 06 19:02:57 IST 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <imp1:OSGINV>
      <xsl:for-each select="/db:SelectOSGINVFeedFromOracleOutputCollection/db:SelectOSGINVFeedFromOracleOutput">
        <imp1:OSGINVFeed>
         <imp1:TRX_NUMBER>
          <xsl:value-of select="concat('&quot;',db:TRX_NUMBER,'&quot;')"/>
          </imp1:TRX_NUMBER>
          <imp1:CUSTOMER_TRX_ID>
           <xsl:value-of select="concat('&quot;',db:CUSTOMER_TRX_ID,'&quot;')"/>
          </imp1:CUSTOMER_TRX_ID>
          <imp1:TRX_DATE>
           <xsl:value-of select="concat('&quot;',db:TRX_DATE,'&quot;')"/>
          </imp1:TRX_DATE>
          <imp1:CUSTOMER_NAME>
           <xsl:value-of select="concat('&quot;',db:CUSTOMER_NAME,'&quot;')"/>
          </imp1:CUSTOMER_NAME>
          <imp1:ADDRESS1>
           <xsl:value-of select="concat('&quot;',db:ADDRESS1,'&quot;')"/>
          </imp1:ADDRESS1>
          <imp1:ADDRESS2>
           <xsl:value-of select="concat('&quot;',db:ADDRESS2,'&quot;')"/>
          </imp1:ADDRESS2>
          <imp1:ADDRESS3>
           <xsl:value-of select="concat('&quot;',db:ADDRESS3,'&quot;')"/>
          </imp1:ADDRESS3>
          <imp1:ADDRESS4>
           <xsl:value-of select="concat('&quot;',db:ADDRESS4,'&quot;')"/>
          </imp1:ADDRESS4>
          <imp1:CITY>
           <xsl:value-of select="concat('&quot;',db:CITY,'&quot;')"/>
          </imp1:CITY>
          <imp1:COUNTY>
           <xsl:value-of select="concat('&quot;',db:COUNTY,'&quot;')"/>
          </imp1:COUNTY>
          <imp1:STATE>
           <xsl:value-of select="concat('&quot;',db:STATE,'&quot;')"/>
          </imp1:STATE>
          <imp1:POSTALCODE>
           <xsl:value-of select="concat('&quot;',db:POSTALCODE,'&quot;')"/>
          </imp1:POSTALCODE>
          <imp1:COUNTRY>
           <xsl:value-of select="concat('&quot;',db:COUNTRY,'&quot;')"/>
          </imp1:COUNTRY>
          <imp1:ACCOUNT_NUMBER>
           <xsl:value-of select="concat('&quot;',db:ACCOUNT_NUMBER,'&quot;')"/>
          </imp1:ACCOUNT_NUMBER>
          <imp1:EMAIL_ADDRESS>
            <xsl:value-of select="concat('&quot;',db:EMAIL_ADDRESS,'&quot;')"/>
          </imp1:EMAIL_ADDRESS>
          <imp1:INVOICE_AMOUNT>
            <xsl:value-of select="concat('&quot;',format-number(db:INVOICE_AMOUNT, '#.00'),'&quot;')"/>
          </imp1:INVOICE_AMOUNT>
          <imp1:ITEM_DESCRIPTION>
            <xsl:value-of select="concat('&quot;',db:ITEM_DESCRIPTION,'&quot;')"/>
          </imp1:ITEM_DESCRIPTION>
          <imp1:PAST_PAYMENT_DUE>
            <xsl:value-of select="concat('&quot;',format-number(db:PAST_PAYMENT_DUE, '#.00'),'&quot;')"/>
          </imp1:PAST_PAYMENT_DUE>
          <imp1:BALANCE_DUE>
            <xsl:value-of select="concat('&quot;',format-number(db:BALANCE_DUE, '#.00'),'&quot;')"/>
          </imp1:BALANCE_DUE>
        </imp1:OSGINVFeed>
      </xsl:for-each>
    </imp1:OSGINV>
  </xsl:template>
</xsl:stylesheet>