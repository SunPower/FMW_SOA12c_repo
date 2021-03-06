<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns4="http://www.sunpowercorp.com/Noun/SyncAccCustomers/V1" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns7="http://xmlns.oracle.com/SFDCUtilityService/SFDCUtilityService" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:client="http://xmlns.oracle.com/TPOSOACustomerSync/UpdateCustomerSFDCProv/UpdateCustomerSFDCProv" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:tns="http://xmlns.oracle.com/SFDCUtilityService/SFDCUtilityServiceMediator" xmlns:ns3="http://xmlns.oracle.com/SFDCUtilityServiceCustomer/SFDCUtilityService" xmlns:ns0="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateContactEBS" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns2="http://www.sunpowercorp.com/SunPowerDevelopment/DealerPartnerCreditINFO/EnqueSyncCreditHold/initParams/xsd/v1" xmlns:ns5="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns6="http://www.sunpowercorp.com/Common/SyncAccCustCommonTypes/V1" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns8="http://xmlns.oracle.com/pcbpel/adapter/db/TPOSOACustomerSync/UpdateCustomerSFDCProv/UpdateContactEBS" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessSFDCSyncCust/V1" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns4 ns7 client tns ns3 ns0 plnk wsdl ns2 ns5 ns6 xsd ns1 top ns8 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/UpdateCustomerSFDCProv.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ProcessSFDCSyncCustResp" namespace="http://www.sunpowercorp.com/BOD/ProcessSFDCSyncCust/V1"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="http://dev-fusappdca02.sunpowercorp.com:7003/soa-infra/services/default/SFDCUtilityService!1.0/SFDCUtilityServiceMediator.wsdl"/>
            <oracle-xsl-mapper:rootElement name="updateResponse" namespace="http://xmlns.oracle.com/SFDCUtilityService/SFDCUtilityService"/>
            <oracle-xsl-mapper:param name="ReceiveSFDCUtilityServiceContact_OV.payload"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/UpdateCustomerSFDCProv.wsdl"/>
            <oracle-xsl-mapper:rootElement name="InitParams" namespace="http://www.sunpowercorp.com/SunPowerDevelopment/DealerPartnerCreditINFO/EnqueSyncCreditHold/initParams/xsd/v1"/>
            <oracle-xsl-mapper:param name="InstanceId"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/UpdateContactEBS.wsdl"/>
            <oracle-xsl-mapper:rootElement name="XxspwrCustContactsCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateContactEBS"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <oracle-xsl-mapper:named-template-schema>
         <oracle-xsl-mapper:template name="ContactsEBSResp">
            <oracle-xsl-mapper:mapSources/>
         </oracle-xsl-mapper:template>
      </oracle-xsl-mapper:named-template-schema>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [MON OCT 10 15:11:27 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="ReceiveSFDCUtilityServiceContact_OV.payload"/>
  <xsl:param name="InstanceId"/>
  <xsl:template match="/">
    <top:XxspwrCustContactsCollection>
      <xsl:for-each select="/ns1:ProcessSFDCSyncCustResp/ns1:DataArea/ns4:SyncAccCustomersResp/ns4:ContactsResp/ns4:ContactResp">
        <xsl:call-template name="ContactsEBSResp">
          <xsl:with-param name="contactsCnt" select="ns6:position"/>
          <xsl:with-param name="contacts" select="."/>
        </xsl:call-template>
      </xsl:for-each>
    </top:XxspwrCustContactsCollection>
  </xsl:template>
  <xsl:template name="ContactsEBSResp">
    <xsl:param name="contactsCnt"/>
    <xsl:param name="contacts"/>
    <top:XxspwrCustContacts>
      <top:tempContactId>
        <xsl:value-of select="$contacts/ns6:TEMP_CONTACT_ID"/>
      </top:tempContactId>
      <top:sfdcContactId>
        <xsl:value-of select="$contacts/ns6:SFDC_CONTACT_ID"/>
      </top:sfdcContactId>
      <xsl:choose>
        <xsl:when test="$ReceiveSFDCUtilityServiceContact_OV.payload/ns7:updateResponse/ns7:result[position()=$contactsCnt]/ns7:success='true'">
          <top:sfdcSynced>
            <xsl:value-of select="'S'"/>
          </top:sfdcSynced>
        </xsl:when>
        <xsl:otherwise>
          <top:sfdcSynced>
            <xsl:value-of select="'E'"/>
          </top:sfdcSynced>
          <top:soaErrorMessage>
            <xsl:value-of select="$ReceiveSFDCUtilityServiceContact_OV.payload/ns7:updateResponse/ns7:result[position()=$contactsCnt]/ns7:errors/ns7:message"/>
          </top:soaErrorMessage>
        </xsl:otherwise>
      </xsl:choose>
      <top:soaO2SId>
        <xsl:value-of select="$InstanceId/ns2:InitParams/ns2:instanceid"/>
      </top:soaO2SId>
    </top:XxspwrCustContacts>
  </xsl:template>
</xsl:stylesheet>