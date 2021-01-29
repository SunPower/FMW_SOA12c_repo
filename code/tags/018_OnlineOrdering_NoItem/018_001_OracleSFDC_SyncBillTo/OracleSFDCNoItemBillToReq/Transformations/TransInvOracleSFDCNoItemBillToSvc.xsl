<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns5="http://www.sunpowercorp.com/Noun/OnlineOrderingNoItemOracleToSFDC/V1" xmlns:ns3="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns2="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/OnlineOrderingNoItemOracleToSFDC/OracleSFDCNoItemBillToReq/dequeOracleSFDCNoItemBillTo" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:imp1="http://xmlns.oracle.com/pcbpel/adapter/db/selectNoItemBillToFromEBS" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessOnlineOrderingNoItemOracleToSFDC/V1" xmlns:client="http://www.sunpowercorp.com/OnlineOrderingNoItemOracleToSFDC/OracleSFDCNoItemBillToCanonical" xmlns:ns4="http://www.sunpowercorp.com/Common/OnlineOrderingNoItemOracleToSFDCCommonTypes/V1" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl pc plt wsdl jca tns xsd imp1 ns0 soap ns5 ns3 ns2 ns1 client ns4 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <ns1:ProcessOnlineOrderingNoItemOracleToSFDC>
         <ns1:DataArea>
            <ns5:OnlineOrderingNoItemOracleToSFDC>
               <xsl:for-each select="/imp1:selectNoItemBillToFromEBSOutputCollection/imp1:selectNoItemBillToFromEBSOutput">
                  <ns5:OnlineOrderingNoItemOracleToSFDCDetails>
                     <ns4:ACCOUNT_NAME>
                        <xsl:value-of select="imp1:ACCOUNT_NAME"/>
                     </ns4:ACCOUNT_NAME>
                     <ns4:ACCOUNT_NUMBER>
                        <xsl:value-of select="imp1:ACCOUNT_NUMBER"/>
                     </ns4:ACCOUNT_NUMBER>
                     <ns4:CUST_ACCT_SITE_ID>
                        <xsl:value-of select="imp1:CUST_ACCT_SITE_ID"/>
                     </ns4:CUST_ACCT_SITE_ID>
                     <ns4:ADDRESS1>
                        <xsl:value-of select="imp1:ADDRESS1"/>
                     </ns4:ADDRESS1>
                     <ns4:ADDRESS2>
                        <xsl:value-of select="imp1:ADDRESS2"/>
                     </ns4:ADDRESS2>
                     <ns4:ADDRESS3>
                        <xsl:value-of select="imp1:ADDRESS3"/>
                     </ns4:ADDRESS3>
                     <ns4:CITY>
                        <xsl:value-of select="imp1:CITY"/>
                     </ns4:CITY>
                     <ns4:POSTAL_CODE>
                        <xsl:value-of select="imp1:POSTAL_CODE"/>
                     </ns4:POSTAL_CODE>
                     <ns4:STATE>
                        <xsl:value-of select="imp1:STATE"/>
                     </ns4:STATE>
                     <ns4:COUNTRY>
                        <xsl:value-of select="imp1:COUNTRY"/>
                     </ns4:COUNTRY>
                     <ns4:PRIMARY_FLAG>
                        <xsl:value-of select="imp1:PRIMARY_FLAG"/>
                     </ns4:PRIMARY_FLAG>
                       <ns4:OU_SHORT_CODE>
                        <xsl:value-of select="imp1:OU_SHORT_CODE"/>
                     </ns4:OU_SHORT_CODE>
                  </ns5:OnlineOrderingNoItemOracleToSFDCDetails>
               </xsl:for-each>
            </ns5:OnlineOrderingNoItemOracleToSFDC>
         </ns1:DataArea>
      </ns1:ProcessOnlineOrderingNoItemOracleToSFDC>
   </xsl:template>
</xsl:stylesheet>