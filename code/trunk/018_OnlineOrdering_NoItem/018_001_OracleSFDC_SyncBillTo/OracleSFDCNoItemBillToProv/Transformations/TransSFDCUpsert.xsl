<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:client="http://www.sunpowercorp.com/OnlineOrderingNoItemOracleToSFDC/OracleSFDCNoItemBillToProv/OracleSFDCNoItemBillToProv_BPEL" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns6="http://www.sunpowercorp.com/Noun/OnlineOrderingNoItemOracleToSFDC/V1" xmlns:ns3="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns4="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessOnlineOrderingNoItemOracleToSFDC/V1" xmlns:ns5="http://www.sunpowercorp.com/Common/OnlineOrderingNoItemOracleToSFDCCommonTypes/V1" xmlns:ns7="http://www.sunpowercorp.com/OnlineOrderingNoItemOracleToSFDC/OracleSFDCNoItemBillToProv/OracleAccountNumbers/xsd/v1" xmlns:ns2="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 plnk soap client wsdl ns6 ns3 ens ns4 fns xsd ns1 ns5 ns7 ns2 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:param name="InvSFDC_Query_OV.parameters"/>
   <xsl:template match="/">
      <ns2:upsert>
         <ns2:externalIDFieldName>
            <xsl:text disable-output-escaping="no">Site_ID__c</xsl:text>
         </ns2:externalIDFieldName>
         <xsl:for-each select="/ns1:ProcessOnlineOrderingNoItemOracleToSFDC/ns1:DataArea/ns6:OnlineOrderingNoItemOracleToSFDC/ns6:OnlineOrderingNoItemOracleToSFDCDetails">
            <xsl:variable name="AccountNumber" select="ns5:ACCOUNT_NUMBER"/>
            <ns2:sObjects>
               <ens:type>
                  <xsl:text disable-output-escaping="no">Bill_To_Site__c</xsl:text>
               </ens:type>
               <xsl:if test="ns5:CUST_ACCT_SITE_ID != &quot;&quot;">
                  <ens:Site_ID__c>
                     <xsl:value-of select="ns5:CUST_ACCT_SITE_ID"/>
                  </ens:Site_ID__c>
               </xsl:if>
               <xsl:if test="ns5:ACCOUNT_NAME != &quot;&quot;">
                  <ens:Name>
                     <xsl:value-of select="ns5:ACCOUNT_NAME"/>
                  </ens:Name>
               </xsl:if>
               <ens:Dealer_Account__c>
                  <xsl:value-of select="$InvSFDC_Query_OV.parameters/ns2:queryResponse/ns2:result/ns2:records[(ens:Oracle_Account_Number__c = $AccountNumber)]/ens:Id"/>
               </ens:Dealer_Account__c>
               <xsl:if test="ns5:ADDRESS1 != &quot;&quot;">
                  <ens:Address1__c>
                     <xsl:value-of select="ns5:ADDRESS1"/>
                  </ens:Address1__c>
               </xsl:if>
               <xsl:if test="ns5:ADDRESS2 != &quot;&quot;">
                  <ens:Address2__c>
                     <xsl:value-of select="ns5:ADDRESS2"/>
                  </ens:Address2__c>
               </xsl:if>
               <xsl:if test="ns5:ADDRESS3 != &quot;&quot;">
                  <ens:Address3__c>
                     <xsl:value-of select="ns5:ADDRESS3"/>
                  </ens:Address3__c>
               </xsl:if>
               <xsl:if test="ns5:CITY != &quot;&quot;">
                  <ens:City__c>
                     <xsl:value-of select="ns5:CITY"/>
                  </ens:City__c>
               </xsl:if>
               <xsl:if test="ns5:STATE != &quot;&quot;">
                  <ens:State__c>
                     <xsl:value-of select="ns5:STATE"/>
                  </ens:State__c>
               </xsl:if>
               <xsl:if test="ns5:COUNTRY != &quot;&quot;">
                  <ens:Country__c>
                     <xsl:value-of select="ns5:COUNTRY"/>
                  </ens:Country__c>
               </xsl:if>
               <xsl:choose>
                  <xsl:when test="ns5:PRIMARY_FLAG = &quot;Y&quot;">
                     <ens:Active__c>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </ens:Active__c>
                  </xsl:when>
                  <xsl:otherwise>
                     <ens:Active__c>
                        <xsl:text disable-output-escaping="no">false</xsl:text>
                     </ens:Active__c>
                  </xsl:otherwise>
               </xsl:choose>
               <xsl:if test="ns5:ACCOUNT_NUMBER != &quot;&quot;">
                  <ens:Oracle_Operating_Unit__c>
                     <xsl:value-of select="ns5:ACCOUNT_NUMBER"/>
                  </ens:Oracle_Operating_Unit__c>
               </xsl:if>              
                <xsl:if test="ns5:OU_SHORT_CODE != &quot;&quot;">
                  <ens:Oracle_Operating_Unit_Code__c>
                     <xsl:value-of select="ns5:OU_SHORT_CODE"/>
                  </ens:Oracle_Operating_Unit_Code__c>
               </xsl:if>
            </ns2:sObjects>
         </xsl:for-each>
      </ns2:upsert>
   </xsl:template>
</xsl:stylesheet>