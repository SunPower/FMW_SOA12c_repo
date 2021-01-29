<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/CreateUpdateContactCustomer" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns2="http://www.sunpowercorp.com/Noun/SyncAccCustomers/V1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/TPOSOACustomerSync/CreateUpdateCustomerOracleProv/CreateUpdateContactCustomer" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:client="http://xmlns.oracle.com/TPOSOACustomerSync/CreateUpdateCustomerOracleProv/CreateUpdateCustomerOracleProv" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ins="http://www.sunpowercorp.com/SFDCSyncLeaseCustomerReq/xsd/v1" xmlns:ns3="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns4="http://www.sunpowercorp.com/Common/SyncAccCustCommonTypes/V1" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessSFDCSyncCust/V1" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns2 ns0 plnk wsdl client ins ns3 ns4 xsd ns1 top tns xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/CreateUpdateCustomerOracleProv.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ProcessSFDCSyncCust" namespace="http://www.sunpowercorp.com/BOD/ProcessSFDCSyncCust/V1"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/CreateUpdateContactCustomer.wsdl"/>
            <oracle-xsl-mapper:rootElement name="XxspwrCustContactsCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/CreateUpdateContactCustomer"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [FRI OCT 07 15:38:37 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="InstanceId"/>
  <xsl:template match="/">
    <top:XxspwrCustContactsCollection>
      <xsl:for-each select="/ns1:ProcessSFDCSyncCust/ns1:DataArea/ns2:SyncAccCustomers/ns2:Contacts/ns2:Contact">
        <top:XxspwrCustContacts>
          <top:tempContactId>
            <xsl:value-of select="ns4:TEMP_CONTACT_ID"/>
          </top:tempContactId>
          <top:firstName>
            <xsl:value-of select="ns4:FIRST_NAME"/>
          </top:firstName>
          <top:lastName>
            <xsl:value-of select="ns4:LAST_NAME"/>
          </top:lastName>
          <!--<top:contactRole>
            <xsl:value-of select="ns4:CONTACT_ROLE"/>
          </top:contactRole>-->
          <top:creationDate>
            <xsl:value-of select="xp20:current-dateTime()"/>
          </top:creationDate>
          <top:lastUpdateDate>
            <xsl:value-of select="xp20:current-dateTime()"/>
          </top:lastUpdateDate>
          <top:createdBy>
            <xsl:value-of select="ns4:CREATED_BY"/>
          </top:createdBy>
          <top:lastUpdatedBy>
            <xsl:value-of select="ns4:LAST_UPDATED_BY"/>
          </top:lastUpdatedBy>
          <top:processFlag>
            <xsl:value-of select="ns4:PROCESS_FLAG"/>
          </top:processFlag>
          <top:custAccountRoleId>
            <xsl:value-of select="ns4:CUST_ACCOUNT_ROLE_ID"/>
          </top:custAccountRoleId>
          <top:primaryFlag>
            <xsl:value-of select="ns4:PRIMARY_FLAG"/>
          </top:primaryFlag>
          <top:sfdcContactId>
            <xsl:value-of select="ns4:SFDC_CONTACT_ID"/>
          </top:sfdcContactId>
          <top:emailId>
            <xsl:value-of select="ns4:EMAIL_ID"/>
          </top:emailId>
          <top:faxNo>
            <xsl:value-of select="ns4:FAX_NO"/>
          </top:faxNo>
          <top:mobileNo>
            <xsl:value-of select="ns4:MOBILE_NO"/>
          </top:mobileNo>
          <top:rawPhoneNumber>
            <xsl:value-of select="ns4:RAW_PHONE_NUMBER"/>
          </top:rawPhoneNumber>
          <top:modeType>
            <xsl:value-of select="ns4:TRANSACTION_STATUS"/>
          </top:modeType>
          <top:tempCustId>
            <xsl:value-of select="ns4:TEMP_CUST_ID"/>
          </top:tempCustId>
          <top:accountNumber>
            <xsl:value-of select="ns4:ACCOUNT_NUMBER"/>
          </top:accountNumber>
          <top:dataSource>
            <xsl:value-of select="../../../ns0:process"/>
          </top:dataSource>
          <top:soaS2OId>
            <xsl:value-of select="$InstanceId/ins:Inputparam/ins:instanceid"/>
          </top:soaS2OId>
          <top:status>
            <xsl:value-of select="ns4:STATUS"/>
          </top:status>
          <top:customerOrderLinkId>
            <xsl:value-of select="ns4:CUSTOMER_ORDER_LINK_ID"/>
          </top:customerOrderLinkId>
          <top:salesType>
            <xsl:value-of select="ns4:SALES_TYPE"/>
          </top:salesType>
          <top:sfdcAccountId>
            <xsl:value-of select="ns4:SFDC_ACCOUNT_ID"/>
          </top:sfdcAccountId>
        </top:XxspwrCustContacts>
      </xsl:for-each>
    </top:XxspwrCustContactsCollection>
  </xsl:template>
</xsl:stylesheet>