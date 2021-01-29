<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/file/EDICOMApplication/pollEDI214n861FilesToOracle/pollEDI214Files" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://www.sunpowercorp.com/utilities/inputparam/xsd/v1" xmlns:imp1="http://www.sunpowercorp.com/214_FlatFile" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/insertEDI214Files" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/EDICom/pollEDI214n861FilesToOracle/insertEDI214Files" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tns pc plt wsdl ns0 imp1 jca xsd top ns1 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../pollEDI214Files.wsdl"/>
            <oracle-xsl-mapper:rootElement name="SalesOderDetails" namespace="http://www.sunpowercorp.com/214_FlatFile"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="XSD">
            <oracle-xsl-mapper:schema location="../Schemas/inputParams.xsd"/>
            <oracle-xsl-mapper:rootElement name="InputParams" namespace="http://www.sunpowercorp.com/utilities/inputparam/xsd/v1"/>
            <oracle-xsl-mapper:param name="inputParam"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../insertEDI214Files.wsdl"/>
            <oracle-xsl-mapper:rootElement name="XxspwrEdicomInboundCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/insertEDI214Files"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [WED OCT 05 10:55:48 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="inputParam"/>
  <xsl:template match="/">
    <top:XxspwrEdicomInboundCollection>
      <xsl:for-each select="/imp1:SalesOderDetails/imp1:SalesOrderDetail">
        <top:XxspwrEdicomInbound>
          <top:signalType>
            <xsl:text disable-output-escaping="no">214</xsl:text>
          </top:signalType>
          <top:signalName>
            <xsl:text disable-output-escaping="no">214 IB</xsl:text>
          </top:signalName>
          <top:orderNumber>
            <xsl:value-of select="imp1:SALES_ORDER"/>
          </top:orderNumber>
          <top:lineNumber>
            <xsl:value-of select="imp1:LINE_NUMBER"/>
          </top:lineNumber>
          <top:deliveryNo>
            <xsl:value-of select="imp1:DELIVERY_NUMBER"/>
          </top:deliveryNo>
          <top:packingListNo>
            <xsl:value-of select="imp1:PACKING_LIST_NO"/>
          </top:packingListNo>
          <top:itemNumber>
            <xsl:value-of select="imp1:ITEM_NUMBER"/>
          </top:itemNumber>
          <top:shippingWh>
            <xsl:value-of select="imp1:SHIPPING_WAREHOUSE"/>
          </top:shippingWh>
          <top:trackingNo>
            <xsl:value-of select="imp1:TRACKINGNUMBER"/>
          </top:trackingNo>
          <top:departureString>
            <xsl:value-of select="imp1:DATE_OF_DEPARTURE"/>
          </top:departureString>
          <top:arrivalString>
            <xsl:value-of select="imp1:DATE_OF_ARRIVAL"/>
          </top:arrivalString>
          <top:box>
            <xsl:value-of select="imp1:BOX"/>
          </top:box>
          <top:shippingQty>
            <xsl:value-of select="imp1:SHIPPING_QTY"/>
          </top:shippingQty>
          <top:shippingInstructions>
            <xsl:value-of select="imp1:SHIPPING_INSTRUCTIONS"/>
          </top:shippingInstructions>
          <top:ediAction>
            <xsl:value-of select="imp1:ACTION"/>
          </top:ediAction>
          <top:weight>
            <xsl:value-of select="imp1:WEIGHT"/>
          </top:weight>
          <top:issueCode>
            <xsl:value-of select="imp1:ISSUE_CODE"/>
          </top:issueCode>
          <top:logisticPartnerCode>
            <xsl:value-of select="substring-before(imp1:LOGISTIC_PARTNER_CODE,&quot;,&quot;)"/>
          </top:logisticPartnerCode>
          <top:lastUpdateDate>
            <xsl:value-of select="xp20:current-dateTime()"/>
          </top:lastUpdateDate>
          <top:lastUpdatedBy>
            <xsl:text disable-output-escaping="no">-1</xsl:text>
          </top:lastUpdatedBy>
          <top:creationDate>
            <xsl:value-of select="xp20:current-dateTime()"/>
          </top:creationDate>
          <top:createdBy>
            <xsl:text disable-output-escaping="no">-1</xsl:text>
          </top:createdBy>
          <top:edi214FileName>
            <xsl:value-of select="$inputParam/ns0:InputParams/ns0:inputparam"/>
          </top:edi214FileName>
           <top:loadNumber>
            <xsl:value-of select="imp1:LOAD_NUMBER"/>
          </top:loadNumber>
        </top:XxspwrEdicomInbound>
      </xsl:for-each>
    </top:XxspwrEdicomInboundCollection>
  </xsl:template>
</xsl:stylesheet>