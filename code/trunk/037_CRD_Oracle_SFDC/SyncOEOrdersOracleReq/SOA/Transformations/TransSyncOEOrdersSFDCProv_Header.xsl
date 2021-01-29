<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/SyncOEOrdersOracleToSFDC/SyncOEOrdersOracleReq/pollOracleOrderHeadres" xmlns:ns0="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns6="http://www.sunpowercorp.com/Common/SyncOEOrdersCommonTypes/V1" xmlns:ns7="http://www.sunpowercorp.com/SunPowerDevelopment/initParams/xsd/v1" xmlns:ns2="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessSyncOEOrders/V1" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns4="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns8="http://www.sunpowercorp.com/SunPowerDevelopment/utility/BatchEmailUtilityService/xsd/V1" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns5="http://www.sunpowercorp.com/Noun/SyncOEOrders/V1" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/pollOracleOrderHeadres" xmlns:client="http://www.sunpowercorp.com/SyncOEOrdersOracleToSFDC/SyncOEOrdersSFDCProv/SyncOEOrdersSFDCProv_BPEL" xmlns:ns3="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tns plt wsdl xsd top ns0 ns6 ns7 ns2 ns1 ns4 ns8 ns5 client ns3 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/pollOracleOrderHeadres.wsdl"/>
            <oracle-xsl-mapper:rootElement name="XxspwrOmHeaderSyncCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/pollOracleOrderHeadres"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="http://dev-fusappdca02.sunpowercorp.com:7003/soa-infra/services/online/SyncOEOrdersSFDCProv/SyncOEOrdersSFDCProv_BPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ProcessSyncOEOrders" namespace="http://www.sunpowercorp.com/BOD/ProcessSyncOEOrders/V1"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [TUE OCT 11 15:42:52 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <ns1:ProcessSyncOEOrders>
      <ns1:DataArea>
        <ns0:process>
          <xsl:text disable-output-escaping="no"/>
        </ns0:process>
        <ns5:SyncOEOrders>
          <xsl:for-each select="/top:XxspwrOmHeaderSyncCollection/top:XxspwrOmHeaderSync">
            <ns5:SyncOEOrderHeaderDetails>
              <ns6:SFDC_ID>
                <xsl:value-of select="top:sfdcId"/>
              </ns6:SFDC_ID>
              <ns6:OPERATING_UNIT>
                <xsl:value-of select="top:operatingUnit"/>
              </ns6:OPERATING_UNIT>
              <ns6:HEADER_ID>
                <xsl:value-of select="top:headerId"/>
              </ns6:HEADER_ID>
              <ns6:ORDER_NUMBER>
                <xsl:value-of select="top:orderNumber"/>
              </ns6:ORDER_NUMBER>
              <ns6:ORACLE_REQUEST_ID>
                <xsl:value-of select="top:oracleRequestId"/>
              </ns6:ORACLE_REQUEST_ID>
              <ns6:SFDC_REQUEST_ID>
                <xsl:value-of select="top:sfdcRequestId"/>
              </ns6:SFDC_REQUEST_ID>
              <ns6:SFDC_REQUEST_STATUS>
                <xsl:value-of select="top:sfdcRequestStatus"/>
              </ns6:SFDC_REQUEST_STATUS>
              <ns6:EMAIL_ID>
                <xsl:value-of select="top:emailId"/>
              </ns6:EMAIL_ID>
              <ns6:ORACLE_USER_ID>
                <xsl:value-of select="top:oracleUserId"/>
              </ns6:ORACLE_USER_ID>
              <ns6:CUST_ACCT_NUMBER>
                <xsl:value-of select="top:custAcctNumber"/>
              </ns6:CUST_ACCT_NUMBER>
              <ns6:CREDIT_LIMIT>
                <xsl:value-of select="top:creditLimit"/>
              </ns6:CREDIT_LIMIT>
              <ns6:TRANSACTION_DATE>
                <xsl:value-of select="top:transactionDate"/>
              </ns6:TRANSACTION_DATE>
              <ns6:DUE_DATE>
                <xsl:value-of select="top:dueDate"/>
              </ns6:DUE_DATE>
              <ns6:AMOUNT>
                <xsl:value-of select="top:amount"/>
              </ns6:AMOUNT>
              <ns6:AMOUNT_OPEN>
                <xsl:value-of select="top:amountOpen"/>
              </ns6:AMOUNT_OPEN>
              <ns6:PAYMENT_SCHEDULE_ID>
                <xsl:value-of select="top:paymentScheduleId"/>
              </ns6:PAYMENT_SCHEDULE_ID>
              <ns6:BALANCE>
                <xsl:value-of select="top:balance"/>
              </ns6:BALANCE>
              <ns6:LOCATION_NUMBER>
                <xsl:value-of select="top:locationNumber"/>
              </ns6:LOCATION_NUMBER>
              <ns6:REFERENCE>
                <xsl:value-of select="top:reference"/>
              </ns6:REFERENCE>
              <ns6:TRASACTION_TYPE>
                <xsl:value-of select="top:trasactionType"/>
              </ns6:TRASACTION_TYPE>
              <ns6:QAD_CUSTOMER_NUMBER>
                <xsl:value-of select="top:qadCustomerNumber"/>
              </ns6:QAD_CUSTOMER_NUMBER>
              <ns6:CUSTOMER_NAME>
                <xsl:value-of select="top:customerName"/>
              </ns6:CUSTOMER_NAME>
              <ns6:REGION>
                <xsl:value-of select="top:region"/>
              </ns6:REGION>
              <ns6:INVOICE_REFERENCE>
                <xsl:value-of select="top:invoiceReference"/>
              </ns6:INVOICE_REFERENCE>
              <ns6:SITE_STATUS>
                <xsl:value-of select="top:siteStatus"/>
              </ns6:SITE_STATUS>
              <ns6:ORG_ID>
                <xsl:value-of select="top:orgId"/>
              </ns6:ORG_ID>
              <ns6:PO_SUBMIT_DATE>
                <xsl:value-of select="top:poSubmitDate"/>
              </ns6:PO_SUBMIT_DATE>
              <ns6:SHIP_FROM_ORG_ID>
                <xsl:value-of select="top:shipFromOrgId"/>
              </ns6:SHIP_FROM_ORG_ID>
              <ns6:BILL_TO_SITE_ID>
                <xsl:value-of select="top:billToSiteId"/>
              </ns6:BILL_TO_SITE_ID>
              <ns6:SHIP_TO_SITE_ID>
                <xsl:value-of select="top:shipToSiteId"/>
              </ns6:SHIP_TO_SITE_ID>
              <ns6:ADDRESS_LINE_1>
                <xsl:value-of select="top:addressLine1"/>
              </ns6:ADDRESS_LINE_1>
              <ns6:ADDRESS_LINE_2>
                <xsl:value-of select="top:addressLine2"/>
              </ns6:ADDRESS_LINE_2>
              <ns6:ADDRESS_LINE_3>
                <xsl:value-of select="top:addressLine3"/>
              </ns6:ADDRESS_LINE_3>
              <ns6:CITY>
                <xsl:value-of select="top:city"/>
              </ns6:CITY>
              <ns6:STATE>
                <xsl:value-of select="top:state"/>
              </ns6:STATE>
              <ns6:COUNTRY>
                <xsl:value-of select="top:country"/>
              </ns6:COUNTRY>
              <ns6:POSTAL_CODE>
                <xsl:value-of select="top:postalCode"/>
              </ns6:POSTAL_CODE>
              <ns6:CONTACT_PHONE1>
                <xsl:value-of select="top:contactPhone1"/>
              </ns6:CONTACT_PHONE1>
              <ns6:CONTACT_PHONE2>
                <xsl:value-of select="top:contactPhone2"/>
              </ns6:CONTACT_PHONE2>
              <ns6:CONTACT_PERSON_NAME>
                <xsl:value-of select="top:contactPersonName"/>
              </ns6:CONTACT_PERSON_NAME>
              <ns6:CONTACT_EMAIL>
                <xsl:value-of select="top:contactEmail"/>
              </ns6:CONTACT_EMAIL>
              <ns6:CONTACT_FAX>
                <xsl:value-of select="top:contactFax"/>
              </ns6:CONTACT_FAX>
              <ns6:SHIP_TO_CONTACT_ID>
                <xsl:value-of select="top:shipToContactId"/>
              </ns6:SHIP_TO_CONTACT_ID>
              <ns6:SHIPPING_METHOD>
                <xsl:value-of select="top:shippingMethod"/>
              </ns6:SHIPPING_METHOD>
              <ns6:SPECIAL_INSTRUCTIONS>
                <xsl:value-of select="top:specialInstructions"/>
              </ns6:SPECIAL_INSTRUCTIONS>
              <ns6:SHIPPING_INSTRUCTIONS>
                <xsl:value-of select="top:shippingInstructions"/>
              </ns6:SHIPPING_INSTRUCTIONS>
              <ns6:PACKING_INSTRUCTIONS>
                <xsl:value-of select="top:packingInstructions"/>
              </ns6:PACKING_INSTRUCTIONS>
              <ns6:REQUESTED_DELIVERY_DATE>
                <xsl:value-of select="top:requestedDeliveryDate"/>
              </ns6:REQUESTED_DELIVERY_DATE>
              <ns6:ADJUSTED_AMOUNT>
                <xsl:value-of select="top:adjustedAmount"/>
              </ns6:ADJUSTED_AMOUNT>
              <ns6:SMARTPACK_FLAG>
                <xsl:value-of select="top:smartpackFlag"/>
              </ns6:SMARTPACK_FLAG>
              <ns6:ORDER_STATUS>
                <xsl:value-of select="top:orderStatus"/>
              </ns6:ORDER_STATUS>
              <ns6:LAST_UPDATE_DATE>
                <xsl:value-of select="top:lastUpdateDate"/>
              </ns6:LAST_UPDATE_DATE>
              <ns6:LAST_UPDATED_BY>
                <xsl:value-of select="top:lastUpdatedBy"/>
              </ns6:LAST_UPDATED_BY>
              <ns6:CREATION_DATE>
                <xsl:value-of select="top:orderCreationDate"/>
              </ns6:CREATION_DATE>
              <ns6:CREATED_BY>
                <xsl:value-of select="top:createdBy"/>
              </ns6:CREATED_BY>
              <ns6:ORDER_TYPE>
                <xsl:value-of select="top:orderType"/>
              </ns6:ORDER_TYPE>
              <ns6:LEASE_VALUE>
                <xsl:value-of select="top:leaseValue"/>
              </ns6:LEASE_VALUE>
              <ns6:VENDOR_NUMBER>
                <xsl:value-of select="top:vendorNumber"/>
              </ns6:VENDOR_NUMBER>
              <ns6:VENDOR_SITE_CODE>
                <xsl:value-of select="top:vendorSiteCode"/>
              </ns6:VENDOR_SITE_CODE>
              <ns6:PARTNER_NAME>
                <xsl:value-of select="top:partnerName"/>
              </ns6:PARTNER_NAME>
              <ns6:LEASE_FLAG>
                <xsl:value-of select="top:leaseFlag"/>
              </ns6:LEASE_FLAG>
              <ns6:LEASE_NUMBER>
                <xsl:value-of select="top:leaseNumber"/>
              </ns6:LEASE_NUMBER>
              <ns6:ORDER_RECORD_TYPE>
                <xsl:value-of select="top:orderRecordType"/>
              </ns6:ORDER_RECORD_TYPE>
              <ns6:FINANCIER>
                <xsl:value-of select="top:financier"/>
              </ns6:FINANCIER>
              <ns6:PARTNER_ACC_NUMBER>
                <xsl:value-of select="top:partnerAccNumber"/>
              </ns6:PARTNER_ACC_NUMBER>
              <ns6:SOA_FLAG>
                <xsl:value-of select="top:soaFlag"/>
              </ns6:SOA_FLAG>
              <ns6:SOA_ERRORMSG>
                <xsl:value-of select="top:soaErrormsg"/>
              </ns6:SOA_ERRORMSG>
              <ns6:PROCESS_FLAG>
                <xsl:value-of select="top:processFlag"/>
              </ns6:PROCESS_FLAG>
              <ns6:PROCESS_MESSAGE>
                <xsl:value-of select="top:processMessage"/>
              </ns6:PROCESS_MESSAGE>
              <ns6:SYSTEM_SIZE>
                <xsl:value-of select="top:systemSize"/>
              </ns6:SYSTEM_SIZE>
              <ns6:BILL_ADDRESS_LINE_1>
                <xsl:value-of select="top:billAddressLine1"/>
              </ns6:BILL_ADDRESS_LINE_1>
              <ns6:BILL_ADDRESS_LINE_2>
                <xsl:value-of select="top:billAddressLine2"/>
              </ns6:BILL_ADDRESS_LINE_2>
              <ns6:BILL_ADDRESS_LINE_3>
                <xsl:value-of select="top:billAddressLine3"/>
              </ns6:BILL_ADDRESS_LINE_3>
              <ns6:BILL_CITY>
                <xsl:value-of select="top:billCity"/>
              </ns6:BILL_CITY>
              <ns6:BILL_STATE>
                <xsl:value-of select="top:billState"/>
              </ns6:BILL_STATE>
              <ns6:BILL_COUNTRY>
                <xsl:value-of select="top:billCountry"/>
              </ns6:BILL_COUNTRY>
              <ns6:BILL_POSTAL_CODE>
                <xsl:value-of select="top:billPostalCode"/>
              </ns6:BILL_POSTAL_CODE>
              <ns6:CUSTOMER_PROMISE_DATE>
                <xsl:value-of select="top:customerPromiseDate"/>
              </ns6:CUSTOMER_PROMISE_DATE>
              <ns6:SHIP_TO_COUNTY>
                <xsl:value-of select="top:shipToCounty"/>
              </ns6:SHIP_TO_COUNTY>
              <ns6:BILL_TO_COUNTY>
                <xsl:value-of select="top:billToCounty"/>
              </ns6:BILL_TO_COUNTY>
              <ns6:HOLD_STATUS>
                <xsl:value-of select="top:holdStatus"/>
              </ns6:HOLD_STATUS>
              <ns6:CREDIT_CHECK_PAYMENT_DATE>
                <xsl:value-of select="top:creditCheckPaymentDate"/>
              </ns6:CREDIT_CHECK_PAYMENT_DATE>
              <ns6:MIN_SCHEDULE_SHIP_DATE>
                <xsl:value-of select="top:minScheduleShipDate"/>
              </ns6:MIN_SCHEDULE_SHIP_DATE>
              <ns6:MIN_SCHEDULE_ARRIVAL_DATE>
                <xsl:value-of select="top:minScheduleArrivalDate"/>
              </ns6:MIN_SCHEDULE_ARRIVAL_DATE>
              <ns6:PARTNER_CONFIRM_DUE_DATE>
                <xsl:value-of select="top:partnerConfirmDueDate"/>
              </ns6:PARTNER_CONFIRM_DUE_DATE>
              <ns6:CURRENCY_CODE>
                <xsl:value-of select="top:currencyCode"/>
              </ns6:CURRENCY_CODE>
            </ns5:SyncOEOrderHeaderDetails>
          </xsl:for-each>
        </ns5:SyncOEOrders>
      </ns1:DataArea>
    </ns1:ProcessSyncOEOrders>
  </xsl:template>
</xsl:stylesheet>