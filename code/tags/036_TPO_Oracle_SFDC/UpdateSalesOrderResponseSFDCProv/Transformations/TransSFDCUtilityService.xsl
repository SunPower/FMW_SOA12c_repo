<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns5="http://xmlns.oracle.com/SFDCUtilityService/SFDCUtilityService" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns4="http://www.sunpowercorp.com/Noun/OracleSFDCNoItemOrders/V1" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:tns="http://xmlns.oracle.com/SFDCUtilityService/SFDCUtilityServiceMediator" xmlns:ns0="http://www.sunpowercorp.com/order/Verb/VerbCommonTypes/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns2="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns3="http://www.sunpowercorp.com/Common/OracleSFDCNoItemOrdersCommonTypes/V1" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:client="http://xmlns.oracle.com/OnLineSalesOrder/UpdateSalesOrderResponseSFDCProv/UpdateSalesOrderResponseSFDCProv" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessOracleSFDCNoItemOrders/V1" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns4 ns0 plnk wsdl ns2 ns3 client ns1 xsd ns5 tns xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/UpdateSalesOrderResponseSFDCProv.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ProcessOracleSFDCNoItemOrdersRes" namespace="http://www.sunpowercorp.com/BOD/ProcessOracleSFDCNoItemOrders/V1"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="http://dev-fusappdca02.sunpowercorp.com:7003/soa-infra/services/default/SFDCUtilityService!1.0/SFDCUtilityServiceMediator.wsdl"/>
            <oracle-xsl-mapper:rootElement name="update" namespace="http://xmlns.oracle.com/SFDCUtilityService/SFDCUtilityService"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [MON OCT 10 15:20:58 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <ns5:update>
      <ns5:CallingServiceName>
        <xsl:text disable-output-escaping="no">UpdateSalesOrderResponseSFDCProv</xsl:text>
      </ns5:CallingServiceName>
      <xsl:for-each select="/ns1:ProcessOracleSFDCNoItemOrdersRes/ns1:DataArea/ns4:OracleSFDCNoItemOrder/ns4:OracleSFDCNoItemOrderDetails">
        <ns5:sObject>
          <ns5:type>
            <xsl:text disable-output-escaping="no">Purchase_Order__c</xsl:text>
          </ns5:type>
          <ns5:Id>
            <xsl:value-of select="ns3:SFDC_ID"/>
          </ns5:Id>
          <ns5:Oracle_Order_Number__c>
            <xsl:value-of select="ns3:ORDER_NUMBER"/>
          </ns5:Oracle_Order_Number__c>
         <!-- <ns5:Oracle_Ship_to_Site_ID__c>
            <xsl:value-of select="ns3:SHIP_TO_SITE_ID"/>
          </ns5:Oracle_Ship_to_Site_ID__c>-->
          <ns5:Order_Status_Interface_Message__c>
            <xsl:value-of select="ns3:INTERFACE_MESSAGE"/>
          </ns5:Order_Status_Interface_Message__c>
          <ns5:Order_Status__c>
            <xsl:value-of select="ns3:ORDER_STATUS"/>
          </ns5:Order_Status__c>
        </ns5:sObject>
      </xsl:for-each>
    </ns5:update>
  </xsl:template>
</xsl:stylesheet>