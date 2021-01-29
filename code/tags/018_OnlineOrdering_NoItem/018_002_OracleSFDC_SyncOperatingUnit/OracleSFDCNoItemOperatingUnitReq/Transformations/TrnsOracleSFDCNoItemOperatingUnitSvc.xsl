<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessOracleSFDCNoItemOperatingUnit/V1" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns2="http://www.sunpowercorp.com/Noun/OracleSFDCNoItemOperatingUnit/V1" xmlns:ns3="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:imp1="http://xmlns.oracle.com/pcbpel/adapter/db/selecteNoItemOperatingUnitFromEBS" xmlns:ns4="http://www.sunpowercorp.com/Common/OracleSFDCNoItemOperatingUnitCommonTypes/V1" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:client="http://www.sunpowercorp.com/OnlineOrderingNoItemOracleToSFDC/OracleSFDCNoItemOperatingUnitProv/OracleSFDCNoItemOperatingUnitCanonical" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/OnlineOrderingNoItemOracleToSFDC/OracleSFDCNoItemOperatingUnitReq/dequeueOracleSFDCNoItemOperatingUnit" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl pc plt wsdl imp1 jca tns xsd ns1 ns0 soap ns2 ns3 ns4 client xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <ns1:ProcessOracleSFDCNoItemOperatingUnit>
         <ns1:DataArea>
            <ns2:OracleSFDCNoItemOperatingUnit>
               <xsl:for-each select="/imp1:selecteNoItemOperatingUnitFromEBSOutputCollection/imp1:selecteNoItemOperatingUnitFromEBSOutput">
                  <ns2:OracleSFDCNoItemOperatingUnitDetails>
                     <ns4:ORALCE_ACCOUNT_NUMBER>
                        <xsl:value-of select="imp1:ACCOUNT_NUMBER"/>
                     </ns4:ORALCE_ACCOUNT_NUMBER>
                     <ns4:ORALCE_OPERATING_UNIT>
                        <xsl:value-of select="imp1:OU_SHORT_CODE"/>
                     </ns4:ORALCE_OPERATING_UNIT>
                       <ns4:DESIGN_SPOT_CHECK_REVIEW_FLAG>
                        <xsl:value-of select="imp1:DESIGN_SPOT_CHECK_REVIEW_FLAG"/>
                     </ns4:DESIGN_SPOT_CHECK_REVIEW_FLAG>
                        <ns4:LOYALTY_PARTNER>
                        <xsl:value-of select="imp1:LOYALTY_PARTNER"/>
                     </ns4:LOYALTY_PARTNER>
                        <ns4:MW_COMMITTED>
                        <xsl:value-of select="imp1:MW_COMMITTED"/>
                     </ns4:MW_COMMITTED>
                  </ns2:OracleSFDCNoItemOperatingUnitDetails>
               </xsl:for-each>
            </ns2:OracleSFDCNoItemOperatingUnit>
         </ns1:DataArea>
      </ns1:ProcessOracleSFDCNoItemOperatingUnit>
   </xsl:template>
</xsl:stylesheet>