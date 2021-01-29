<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns8="http://xmlns.oracle.com/SFDCUtilityService/SFDCUtilityService" xmlns:ns7="http://www.sunpowercorp.com/Common/Dealer_PartnerCreditINFOTypes/V1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessDealer_PartnerCreditINFO/V1" xmlns:tns="http://xmlns.oracle.com/SFDCUtilityService/SFDCUtilityServiceMediator" xmlns:ns0="http://www.sunpowercorp.com/Noun/Dealer_PartnerCreditINFO/V1" xmlns:ns5="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns4="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns6="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:client="http://xmlns.oracle.com/DealerPartnerCreditDetalis/SyncCreditLimitSFDCProv/SyncCreditLimitSFDCProv" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns2="http://www.sunpowercorp.com/OracleAccountNumbers/xsd/v1" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns3="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns7 ns1 ns0 ns5 plnk soap wsdl ns4 ens ns6 fns client ns2 xsd ns3 ns8 tns xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/SyncCreditLimitSFDCProv.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ProcessDealer_PartnerCreditINFO" namespace="http://www.sunpowercorp.com/BOD/ProcessDealer_PartnerCreditINFO/V1"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/partner.wsdl"/>
            <oracle-xsl-mapper:rootElement name="queryResponse" namespace="urn:partner.soap.sforce.com"/>
            <oracle-xsl-mapper:param name="InvSFDC_OV.parameters"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="http://dev-fusappdca02.sunpowercorp.com:7003/soa-infra/services/default/SFDCUtilityService!1.0/SFDCUtilityServiceMediator.wsdl"/>
            <oracle-xsl-mapper:rootElement name="update" namespace="http://xmlns.oracle.com/SFDCUtilityService/SFDCUtilityService"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [TUE OCT 11 11:27:09 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="InvSFDC_OV.parameters"/>
  <xsl:template match="/">
    <ns8:update>
      <ns8:CallingServiceName>
        <xsl:value-of select="SyncCreditLimitSFDCProv"/>
      </ns8:CallingServiceName>
      <xsl:for-each select="$InvSFDC_OV.parameters/ns3:queryResponse/ns3:result/ns3:records">
        <xsl:variable name="AccountNumber" select="ens:Oracle_Account_Number__c"/>
        <ns8:sObject>
          <ns8:type>
            <xsl:text disable-output-escaping="no">Account</xsl:text>
          </ns8:type>
          <ns8:Id>
            <xsl:value-of select="ens:Id"/>
          </ns8:Id>
          <xsl:if test="/ns1:ProcessDealer_PartnerCreditINFO/ns1:DataArea/ns0:CreditLimit/ns0:CreditLimitDetails[ns7:AccountNumber = $AccountNumber]/ns7:OverallCreditLimit !=''">
            <ns8:Credit_Limit__c>
              <xsl:value-of select="/ns1:ProcessDealer_PartnerCreditINFO/ns1:DataArea/ns0:CreditLimit/ns0:CreditLimitDetails[ns7:AccountNumber = $AccountNumber]/ns7:OverallCreditLimit"/>
            </ns8:Credit_Limit__c>
          </xsl:if>
          <xsl:if test="/ns1:ProcessDealer_PartnerCreditINFO/ns1:DataArea/ns0:CreditLimit/ns0:CreditLimitDetails[ns7:AccountNumber = $AccountNumber]/ns7:Netterm !=''">
            <ns8:Net_Terms__c>
              <xsl:value-of select="/ns1:ProcessDealer_PartnerCreditINFO/ns1:DataArea/ns0:CreditLimit/ns0:CreditLimitDetails[ns7:AccountNumber = $AccountNumber]/ns7:Netterm"/>
            </ns8:Net_Terms__c>
          </xsl:if>
          <xsl:if test="/ns1:ProcessDealer_PartnerCreditINFO/ns1:DataArea/ns0:CreditLimit/ns0:CreditLimitDetails[ns7:AccountNumber = $AccountNumber]/ns7:LastUpdateDate !=''">
            <ns8:Credit_Limit_Date__c>
              <xsl:value-of select="/ns1:ProcessDealer_PartnerCreditINFO/ns1:DataArea/ns0:CreditLimit/ns0:CreditLimitDetails[ns7:AccountNumber = $AccountNumber]/ns7:LastUpdateDate"/>
            </ns8:Credit_Limit_Date__c>
          </xsl:if>
          <xsl:if test="/ns1:ProcessDealer_PartnerCreditINFO/ns1:DataArea/ns0:CreditLimit/ns0:CreditLimitDetails[ns7:AccountNumber = $AccountNumber]/ns7:AvailableCreditLimit !=''">
            <ns8:Available_Credit__c>
              <xsl:value-of select="/ns1:ProcessDealer_PartnerCreditINFO/ns1:DataArea/ns0:CreditLimit/ns0:CreditLimitDetails[ns7:AccountNumber = $AccountNumber]/ns7:AvailableCreditLimit"/>
            </ns8:Available_Credit__c>
          </xsl:if>
          <xsl:if test="/ns1:ProcessDealer_PartnerCreditINFO/ns1:DataArea/ns0:CreditLimit/ns0:CreditLimitDetails[ns7:AccountNumber = $AccountNumber]/ns7:AmountPastDue !=''">
            <ns8:Amount_Past_Due__c>
              <xsl:value-of select="/ns1:ProcessDealer_PartnerCreditINFO/ns1:DataArea/ns0:CreditLimit/ns0:CreditLimitDetails[ns7:AccountNumber = $AccountNumber]/ns7:AmountPastDue"/>
            </ns8:Amount_Past_Due__c>
          </xsl:if>
        </ns8:sObject>
      </xsl:for-each>
    </ns8:update>
  </xsl:template>
</xsl:stylesheet>