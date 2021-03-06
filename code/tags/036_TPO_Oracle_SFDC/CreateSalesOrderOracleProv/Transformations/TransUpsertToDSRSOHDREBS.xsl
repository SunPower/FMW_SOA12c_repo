<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns0="http://www.sunpowercorp.com/order/Verb/VerbCommonTypes/V1" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns5="http://www.sunpowercorp.com/Noun/OracleSFDCNoItemOrders/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpsertToDSRSOHDREBS" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:client="http://xmlns.oracle.com/OnLineSalesOrder/CreateSalesOrderOracleProv/CreateSalesOrderOracleProv" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns2="http://www.sunpowercorp.com/SFDCSyncLeaseCustomerReq/xsd/v1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns3="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:ns4="http://www.sunpowercorp.com/Common/OracleSFDCNoItemOrdersCommonTypes/V1" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessOracleSFDCNoItemOrders/V1" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/OnLineSalesOrder/CreateSalesOrderOracleProv/UpsertToDSRSOHDREBS" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 ns5 plnk wsdl client ns2 ns3 ns4 ns1 xsd top tns xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/CreateSalesOrderOracleProv.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ProcessOracleSFDCNoItemOrdersReq" namespace="http://www.sunpowercorp.com/BOD/ProcessOracleSFDCNoItemOrders/V1"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/CreateSalesOrderOracleProv.wsdl"/>
            <oracle-xsl-mapper:rootElement name="Inputparam" namespace="http://www.sunpowercorp.com/SFDCSyncLeaseCustomerReq/xsd/v1"/>
            <oracle-xsl-mapper:param name="Inputparam"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/UpsertToDSRSOHDREBS.wsdl"/>
            <oracle-xsl-mapper:rootElement name="XxspwrDsrSoHeaderCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpsertToDSRSOHDREBS"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [FRI OCT 07 15:23:52 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="Inputparam"/>
  <xsl:template match="/">
    <top:XxspwrDsrSoHeaderCollection>
      <xsl:for-each select="/ns1:ProcessOracleSFDCNoItemOrdersReq/ns1:DataArea/ns5:OracleSFDCNoItemOrderHeader/ns5:OracleSFDCNoItemOrderDetailsHeader">
        <top:XxspwrDsrSoHeader>
          <top:sfdcId>
            <xsl:value-of select="ns4:SFDC_ID"/>
          </top:sfdcId>
          <top:dsrEmailId>
            <xsl:value-of select="ns4:DSR_EMAIL_ID"/>
          </top:dsrEmailId>
          <top:custPoNumber>
            <xsl:value-of select="ns4:CUST_PO_NUMBER"/>
          </top:custPoNumber>
          <top:shippingMethod>
            <xsl:value-of select="ns4:SHIPPING_METHOD"/>
          </top:shippingMethod>
          <top:specialInstructions>
            <xsl:value-of select="ns4:SPECIAL_INSTRUCTIONS"/>
          </top:specialInstructions>
          <top:taxFlag>
            <xsl:value-of select="ns4:TAX_FLAG"/>
          </top:taxFlag>
          <top:orderCurrencyCode>
            <xsl:value-of select="ns4:ORDER_CURRENCY_CODE"/>
          </top:orderCurrencyCode>
          <top:requestedDeliveryDate>
            <xsl:value-of select="ns4:REQUESTED_DELIVERY_DATE"/>
          </top:requestedDeliveryDate>
          <top:adjustedAmount>
            <xsl:value-of select="ns4:ADJUSTED_AMOUNT"/>
          </top:adjustedAmount>
          <top:smartpackFlag>
            <xsl:value-of select="ns4:SMARTPACK_FLAG"/>
          </top:smartpackFlag>
          <top:orderNumber>
            <xsl:value-of select="ns4:ORDER_NUMBER"/>
          </top:orderNumber>
          <top:orderStatus>
            <xsl:value-of select="ns4:ORDER_STATUS"/>
          </top:orderStatus>
          <top:interfaceStatus>
            <xsl:text disable-output-escaping="no">NEW</xsl:text>
          </top:interfaceStatus>
          <top:lastUpdateDate>
            <xsl:value-of select="xp20:current-dateTime()"/>
          </top:lastUpdateDate>
          <top:lastUpdatedBy>
            <xsl:text disable-output-escaping="no">-999</xsl:text>
          </top:lastUpdatedBy>
          <!-- <top:creationDate>
            <xsl:value-of select="xp20:current-dateTime()"/>
          </top:creationDate>
          <top:createdBy>
            <xsl:text disable-output-escaping="no">-999</xsl:text>
          </top:createdBy> -->
          <top:newOrderClass>
            <xsl:value-of select="ns4:NEW_ORDER_CLASS"/>
          </top:newOrderClass>
          <top:inverterType>
            <xsl:value-of select="ns4:INVERTER_TYPE"/>
          </top:inverterType>
          <top:vendorNumber>
            <xsl:value-of select="ns4:VENDOR_NUMBER"/>
          </top:vendorNumber>
          <top:vendorSiteCode>
            <xsl:value-of select="ns4:VENDOR_SITE_CODE"/>
          </top:vendorSiteCode>
          <top:leaseNumber>
            <xsl:value-of select="ns4:LEASE_NUMBER"/>
          </top:leaseNumber>
          <top:salesType>
            <xsl:value-of select="ns4:SALES_TYPE"/>
          </top:salesType>
          <top:customerSync>
            <xsl:value-of select="ns4:CUSTOMER_SYNC"/>
          </top:customerSync>
          <top:customerOrderLinkId>
            <xsl:value-of select="ns4:CUSTOMER_ORDER_LINK_ID"/>
          </top:customerOrderLinkId>
          <top:sfdcShipToSiteId>
            <xsl:value-of select="ns4:SFDC_SHIPTO"/>
          </top:sfdcShipToSiteId>
          <top:sfdcBillToSiteId>
            <xsl:value-of select="ns4:SFDC_BILLTO"/>
          </top:sfdcBillToSiteId>
          <top:sfdcBillToContactId>
            <xsl:value-of select="ns4:SFDC_BILLTO_CONTACT_ID"/>
          </top:sfdcBillToContactId>
          <top:sfdcShipToContactId>
            <xsl:value-of select="ns4:SFDC_SHIPTO_CONTACT_ID"/>
          </top:sfdcShipToContactId>
          <top:sfdcPartnerId>
            <xsl:value-of select="ns4:SFDC_PARTNER_ID"/>
          </top:sfdcPartnerId>
          <top:sfdcHomeownerId>
            <xsl:value-of select="ns4:SFDC_HOMEOWNER_ID"/>
          </top:sfdcHomeownerId>
          <top:sfdcTpoId>
            <xsl:value-of select="ns4:SFDC_TPO_ID"/>
          </top:sfdcTpoId>
          <top:paymentType>
            <xsl:value-of select="ns4:PAYMENT_TYPE"/>
          </top:paymentType>
          <top:modeType>
            <xsl:value-of select="ns4:TRANSACTION_STATUS"/>
          </top:modeType>
          <top:channelType>
            <xsl:value-of select="ns4:CHANNEL_TYPE"/>
          </top:channelType>
          <top:soaS2OId>
            <xsl:value-of select="$Inputparam/ns2:Inputparam/ns2:instanceid"/>
          </top:soaS2OId>
          <top:dataSource>
            <xsl:value-of select="../../ns0:process"/>
          </top:dataSource>
          <top:taxIdentifier>
            <xsl:value-of select="ns4:TAX_IDENTIFIER"/>
          </top:taxIdentifier>
          <top:okToShipFlag>
          <xsl:value-of select="ns4:OK_TO_SHIP_FLAG"/>
          </top:okToShipFlag>          
            <top:systemCount>
          <xsl:value-of select="ns4:SYSTEM_COUNT"/>
          </top:systemCount>
            <top:rackingIncluded>
          <xsl:value-of select="ns4:RACKING_INCLUDED"/>
          </top:rackingIncluded>   
          <top:monitoringSystemOptOut>
          <xsl:value-of select="ns4:MONITORING_SYSTEM_OPT_OUT"/>
          </top:monitoringSystemOptOut>   
          
          <top:xxspwrDsrSoLinesCollection>
            <xsl:for-each select="ns5:OracleSFDCNoItemOrderDetailsLine">
              <top:XxspwrDsrSoLines>
                <top:lineNumber>
                  <xsl:value-of select="ns4:LINE_NUMBER"/>
                </top:lineNumber>
                <top:inventoryItemId>
                  <xsl:value-of select="ns4:INVENTORY_ITEM_ID"/>
                </top:inventoryItemId>
                <top:requestedQty>
                  <xsl:value-of select="ns4:REQUESTED_QTY"/>
                </top:requestedQty>
                <top:unitPrice>
                  <xsl:value-of select="ns4:UNIT_PRICE"/>
                </top:unitPrice>
                <top:orderLineType>
                  <xsl:value-of select="ns4:ORDER_LINE_TYPE"/>
                </top:orderLineType>
                <top:productType>
                  <xsl:value-of select="ns4:PRODUCT_TYPE"/>
                </top:productType>
                <top:itemType>
                  <xsl:value-of select="ns4:ITEM_TYPE"/>
                </top:itemType>
                <top:lineRequestDate>
                  <xsl:value-of select="ns4:LINE_REQUEST_DATE"/>
                </top:lineRequestDate>
                <top:sfdcOrderLineId>
                  <xsl:value-of select="ns4:SFDC_ORDER_LINE_ID"/>
                </top:sfdcOrderLineId>
                <top:VendorNumber>
                  <xsl:value-of select="ns4:VENDORNUMBER"/>
                </top:VendorNumber>
                <top:VendorSiteCode>
                  <xsl:value-of select="ns4:VENDORSITECODE"/>
                </top:VendorSiteCode>
                   <top:VendorType>
                  <xsl:value-of select="ns4:VENDOR_TYPE"/>
                </top:VendorType>
              </top:XxspwrDsrSoLines>
            </xsl:for-each>
          </top:xxspwrDsrSoLinesCollection>
        </top:XxspwrDsrSoHeader>
      </xsl:for-each>
    </top:XxspwrDsrSoHeaderCollection>
  </xsl:template>
</xsl:stylesheet>