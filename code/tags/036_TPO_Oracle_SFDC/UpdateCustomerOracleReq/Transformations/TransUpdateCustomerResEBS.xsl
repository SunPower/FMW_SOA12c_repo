<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns9="http://www.sunpowercorp.com/Noun/SyncAccCustomers/V1" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:client="http://xmlns.oracle.com/TPOSOACustomerSync/UpdateCustomerOracleReq/UpdateCustomerOracleReq" xmlns:ns4="http://xmlns.oracle.com/pcbpel/adapter/db/TPOSOACustomerSync/UpdateCustomerOracleReq/SelectUpdateCustSiteCustomer" xmlns:tns="http://www.example.org/NewWSDLFile/" xmlns:ns6="http://xmlns.oracle.com/pcbpel/adapter/db/TPOSOACustomerSync/UpdateCustomerOracleReq/SelectUpdateContactCustomer" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns8="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns7="http://www.example.org/UpdateCustomerResPS/" xmlns:ns5="http://xmlns.oracle.com/pcbpel/adapter/db/SelectUpdateContactCustomer" xmlns:ns3="http://xmlns.oracle.com/pcbpel/adapter/db/SelectUpdateCustSiteCustomer" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns2="http://www.sunpowercorp.com/SunPowerDevelopment/DealerPartnerCreditINFO/EnqueSyncCreditHold/initParams/xsd/v1" xmlns:ns10="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns11="http://www.sunpowercorp.com/Common/SyncAccCustCommonTypes/V1" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/SelectUpdateAccountCustomer" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/TPOSOACustomerSync/UpdateCustomerOracleReq/SelectUpdateAccountCustomer" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessSFDCSyncCust/V1" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl client ns4 tns ns6 plnk wsdl ns5 ns3 ns2 db xsd ns0 ns1 ns9 ns8 soap ns7 ns10 ns11 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/UpdateCustomerOracleReq.wsdl"/>
            <oracle-xsl-mapper:rootElement name="NewOperation" namespace="http://www.example.org/NewWSDLFile/"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/SelectUpdateAccountCustomer.wsdl"/>
            <oracle-xsl-mapper:rootElement name="SelectUpdateAccountCustomerOutputCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/SelectUpdateAccountCustomer"/>
            <oracle-xsl-mapper:param name="InvSelectUpdateAccountCustomer_OV.SelectUpdateAccountCustomerOutputCollection"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/SelectUpdateCustSiteCustomer.wsdl"/>
            <oracle-xsl-mapper:rootElement name="SelectUpdateCustSiteCustomerOutputCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/SelectUpdateCustSiteCustomer"/>
            <oracle-xsl-mapper:param name="InvSelectUpdateCustSiteCustomer_OV.SelectUpdateCustSiteCustomerOutputCollection"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/SelectUpdateContactCustomer.wsdl"/>
            <oracle-xsl-mapper:rootElement name="SelectUpdateContactCustomerOutputCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/SelectUpdateContactCustomer"/>
            <oracle-xsl-mapper:param name="InvSelectUpdateContactCustomer_OV.SelectUpdateContactCustomerOutputCollection"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="http://dev-fusappdca02.sunpowercorp.com:7004/UpdateCustomerResponseEBS/Proxy/UpdateCustomerResponseEBSPS?WSDL"/>
            <oracle-xsl-mapper:rootElement name="ProcessSFDCSyncCustResp" namespace="http://www.sunpowercorp.com/BOD/ProcessSFDCSyncCust/V1"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [FRI OCT 07 15:48:51 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="InvSelectUpdateAccountCustomer_OV.SelectUpdateAccountCustomerOutputCollection"/>
  <xsl:param name="InvSelectUpdateCustSiteCustomer_OV.SelectUpdateCustSiteCustomerOutputCollection"/>
  <xsl:param name="InvSelectUpdateContactCustomer_OV.SelectUpdateContactCustomerOutputCollection"/>
  <xsl:template match="/">
    <ns1:ProcessSFDCSyncCustResp>
      <ns1:DataArea>
        <ns8:process>
          <xsl:value-of select="/tns:NewOperation/tns:dataSource"/>
        </ns8:process>
        <ns9:SyncAccCustomersResp>
          <ns9:AccountsResp>
            <xsl:for-each select="$InvSelectUpdateAccountCustomer_OV.SelectUpdateAccountCustomerOutputCollection/db:SelectUpdateAccountCustomerOutputCollection/db:SelectUpdateAccountCustomerOutput">
              <ns9:AccountResp>
                <ns11:SFDC_ACCOUNT_ID>
                  <xsl:value-of select="db:sfdc_account_id"/>
                </ns11:SFDC_ACCOUNT_ID>
                <ns11:ACCOUNT_NUMBER>
                  <xsl:value-of select="db:account_number"/>
                </ns11:ACCOUNT_NUMBER>
                <ns11:PROCESS_FLAG>
                  <xsl:value-of select="db:process_flag"/>
                </ns11:PROCESS_FLAG>
                <ns11:ERROR_MESSAGE>
                  <xsl:value-of select="db:error_message"/>
                </ns11:ERROR_MESSAGE>
                <ns11:CREATION_DATE>
                  <xsl:value-of select="db:creation_date"/>
                </ns11:CREATION_DATE>
                <ns11:SFDC_SYNCED>
                  <xsl:value-of select="db:sfdc_synced"/>
                </ns11:SFDC_SYNCED>
                <ns11:TEMP_CUST_ID>
                  <xsl:value-of select="db:temp_cust_id"/>
                </ns11:TEMP_CUST_ID>
                <ns11:position>
                  <xsl:value-of select="position()"/>
                </ns11:position>
              </ns9:AccountResp>
            </xsl:for-each>
          </ns9:AccountsResp>
          <ns9:CustSitesResp>
            <xsl:for-each select="$InvSelectUpdateCustSiteCustomer_OV.SelectUpdateCustSiteCustomerOutputCollection/ns3:SelectUpdateCustSiteCustomerOutputCollection/ns3:SelectUpdateCustSiteCustomerOutput">
              <ns9:CustSiteResp>
                <ns11:TEMP_CUST_SITE_ID>
                  <xsl:value-of select="ns3:temp_cust_site_id"/>
                </ns11:TEMP_CUST_SITE_ID>
                <ns11:PROCESS_FLAG>
                  <xsl:value-of select="ns3:process_flag"/>
                </ns11:PROCESS_FLAG>
                <ns11:ERROR_MESSAGE>
                  <xsl:value-of select="ns3:error_message"/>
                </ns11:ERROR_MESSAGE>
                <ns11:CUST_ACCT_SITE_ID>
                  <xsl:value-of select="ns3:cust_acct_site_id"/>
                </ns11:CUST_ACCT_SITE_ID>
                <ns11:SITE_USAGE>
                  <xsl:value-of select="ns3:site_usage"/>
                </ns11:SITE_USAGE>
                <ns11:LOCATION>
                  <xsl:value-of select="ns3:location"/>
                </ns11:LOCATION>
                <ns11:SFDC_BILLTO_SITE_ID>
                  <xsl:value-of select="ns3:sfdc_billto_site_ID"/>
                </ns11:SFDC_BILLTO_SITE_ID>
                <ns11:SFDC_SHIPTO_SITE_ID>
                  <xsl:value-of select="ns3:sfdc_shipto_site_id"/>
                </ns11:SFDC_SHIPTO_SITE_ID>
                <ns11:position>
                  <xsl:value-of select="position()"/>
                </ns11:position>
              </ns9:CustSiteResp>
            </xsl:for-each>
          </ns9:CustSitesResp>
          <ns9:ContactsResp>
            <xsl:for-each select="$InvSelectUpdateContactCustomer_OV.SelectUpdateContactCustomerOutputCollection/ns5:SelectUpdateContactCustomerOutputCollection/ns5:SelectUpdateContactCustomerOutput">
              <ns9:ContactResp>
                <ns11:TEMP_CONTACT_ID>
                  <xsl:value-of select="ns5:temp_contact_id"/>
                </ns11:TEMP_CONTACT_ID>
                <ns11:CUST_ACCOUNT_ROLE_ID>
                  <xsl:value-of select="ns5:cust_account_role_id"/>
                </ns11:CUST_ACCOUNT_ROLE_ID>
                <ns11:SFDC_CONTACT_ID>
                  <xsl:value-of select="ns5:sfdc_contact_id"/>
                </ns11:SFDC_CONTACT_ID>
                <ns11:SFDC_SYNCED>
                  <xsl:value-of select="ns5:sfdc_synced"/>
                </ns11:SFDC_SYNCED>
                <ns11:PROCESS_FLAG>
                  <xsl:value-of select="ns5:process_flag"/>
                </ns11:PROCESS_FLAG>
                <ns11:ERROR_MESSAGE>
                  <xsl:value-of select="ns5:ERROR_MESSAGE"/>
                </ns11:ERROR_MESSAGE>
                <ns11:position>
                  <xsl:value-of select="position()"/>
                </ns11:position>
              </ns9:ContactResp>
            </xsl:for-each>
          </ns9:ContactsResp>
        </ns9:SyncAccCustomersResp>
      </ns1:DataArea>
    </ns1:ProcessSFDCSyncCustResp>
  </xsl:template>
</xsl:stylesheet>