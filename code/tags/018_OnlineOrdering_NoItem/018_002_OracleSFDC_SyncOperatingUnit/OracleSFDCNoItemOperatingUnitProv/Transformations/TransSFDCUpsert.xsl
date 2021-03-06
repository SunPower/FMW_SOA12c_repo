<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessOracleSFDCNoItemOperatingUnit/V1" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns3="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:ns5="http://www.sunpowercorp.com/Noun/OracleSFDCNoItemOperatingUnit/V1" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns6="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns7="http://www.sunpowercorp.com/Common/OracleSFDCNoItemOperatingUnitCommonTypes/V1" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:client="http://www.sunpowercorp.com/OnlineOrderingNoItemOracleToSFDC/OracleSFDCNoItemOperatingUnitProv/OracleSFDCNoItemOperatingUnitProv_BPEL" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns4="http://www.sunpowercorp.com/OnlineOrderingNoItemOracleToSFDC/OracleAccountNumbers/xsd/v1" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns2="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns1 ns0 plnk soap wsdl ns3 ens ns5 ns6 ns7 fns client ns4 xsd ns2 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:param name="InvSFDCQuery_OV.parameters"/>
   <xsl:template match="/">
      <ns2:upsert>
         <ns2:externalIDFieldName>
            <xsl:text disable-output-escaping="no">Oracle_Account_Number__c</xsl:text>
         </ns2:externalIDFieldName>
         <xsl:for-each select="$InvSFDCQuery_OV.parameters/ns2:queryResponse/ns2:result/ns2:records">
            <xsl:variable name="OracleAccountNumber" select="ens:Oracle_Account_Number__c"/>
            <xsl:if test="/ns1:ProcessOracleSFDCNoItemOperatingUnit/ns1:DataArea/ns5:OracleSFDCNoItemOperatingUnit/ns5:OracleSFDCNoItemOperatingUnitDetails/ns7:ORALCE_ACCOUNT_NUMBER = $OracleAccountNumber">
               <ns2:sObjects>
                  <ens:type>
                     <xsl:text disable-output-escaping="no">Account</xsl:text>
                  </ens:type>
                  <ens:Oracle_Account_Number__c>
                     <xsl:value-of select="$OracleAccountNumber"/>
                  </ens:Oracle_Account_Number__c>
                  <!--
                  <ens:Oracle_Operating_Unit__c>
                     <xsl:value-of select="/ns1:ProcessOracleSFDCNoItemOperatingUnit/ns1:DataArea/ns5:OracleSFDCNoItemOperatingUnit/ns5:OracleSFDCNoItemOperatingUnitDetails[ns7:ORALCE_ACCOUNT_NUMBER = $OracleAccountNumber]/ns7:ORALCE_OPERATING_UNIT"/>
                  </ens:Oracle_Operating_Unit__c>                 
                 
                  -->
                  <xsl:choose>
                     <xsl:when test="/ns1:ProcessOracleSFDCNoItemOperatingUnit/ns1:DataArea/ns5:OracleSFDCNoItemOperatingUnit/ns5:OracleSFDCNoItemOperatingUnitDetails[ns7:ORALCE_ACCOUNT_NUMBER = $OracleAccountNumber]/ns7:DESIGN_SPOT_CHECK_REVIEW_FLAG ='Y'">
                        <ens:Review_Proposal_Design__c>
                           <xsl:text disable-output-escaping="no">true</xsl:text>
                        </ens:Review_Proposal_Design__c>
                     </xsl:when>
                     <xsl:otherwise>
                        <ens:Review_Proposal_Design__c>
                           <xsl:text disable-output-escaping="no">false</xsl:text>
                        </ens:Review_Proposal_Design__c>
                     </xsl:otherwise>
                  </xsl:choose>
                  <xsl:choose>
                     <xsl:when test="/ns1:ProcessOracleSFDCNoItemOperatingUnit/ns1:DataArea/ns5:OracleSFDCNoItemOperatingUnit/ns5:OracleSFDCNoItemOperatingUnitDetails[ns7:ORALCE_ACCOUNT_NUMBER = $OracleAccountNumber]/ns7:LOYALTY_PARTNER ='Y'">
                        <ens:Loyalty_Partner__c>
                           <xsl:text disable-output-escaping="no">true</xsl:text>
                        </ens:Loyalty_Partner__c>
                     </xsl:when>
                     <xsl:otherwise>
                        <ens:Loyalty_Partner__c>
                           <xsl:text disable-output-escaping="no">false</xsl:text>
                        </ens:Loyalty_Partner__c>
                     </xsl:otherwise>
                  </xsl:choose>
                  <xsl:choose>
                     <xsl:when test="/ns1:ProcessOracleSFDCNoItemOperatingUnit/ns1:DataArea/ns5:OracleSFDCNoItemOperatingUnit/ns5:OracleSFDCNoItemOperatingUnitDetails[ns7:ORALCE_ACCOUNT_NUMBER = $OracleAccountNumber]/ns7:MW_COMMITTED=''">
                        <ens:fieldsToNull>Megawatt__c</ens:fieldsToNull>
                     </xsl:when>
                     <xsl:otherwise>
                        <ens:Megawatt__c>
                           <xsl:value-of select="/ns1:ProcessOracleSFDCNoItemOperatingUnit/ns1:DataArea/ns5:OracleSFDCNoItemOperatingUnit/ns5:OracleSFDCNoItemOperatingUnitDetails[ns7:ORALCE_ACCOUNT_NUMBER = $OracleAccountNumber]/ns7:MW_COMMITTED"/>
                        </ens:Megawatt__c>
                     </xsl:otherwise>
                  </xsl:choose>
               </ns2:sObjects>
            </xsl:if>
         </xsl:for-each>
      </ns2:upsert>
   </xsl:template>
</xsl:stylesheet>