<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="2.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/OnlineOrderingNoItemOracleToSFDC/EnqueOracleSFDCNoItemBillTo/selectNoItemBillToFromEBS" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/selectNoItemBillToFromEBS" xmlns:ns0="http://www.sunpowercorp.com/SunPowerDevelopment/indexInputParams/xsd/v1" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tns plt xsd db ns0 wsdl bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:param name="initParams"/>
   <xsl:template match="/">
      <db:selectNoItemBillToFromEBSOutputCollection>
         <xsl:variable name="StartIndex" select="$initParams/ns0:InitParams/ns0:startIndex"/>
         <xsl:variable name="EndIndex" select="$initParams/ns0:InitParams/ns0:endIndex"/>
         <xsl:for-each select="$StartIndex to $EndIndex">
            <xsl:variable name="Index" select="."/>
            <db:selectNoItemBillToFromEBSOutput>
               <db:ACCOUNT_NAME>
                  <xsl:value-of select="/db:selectNoItemBillToFromEBSOutputCollection/db:selectNoItemBillToFromEBSOutput[$Index]/db:ACCOUNT_NAME"/>
               </db:ACCOUNT_NAME>
               <db:ACCOUNT_NUMBER>
                  <xsl:value-of select="/db:selectNoItemBillToFromEBSOutputCollection/db:selectNoItemBillToFromEBSOutput[$Index]/db:ACCOUNT_NUMBER"/>
               </db:ACCOUNT_NUMBER>
               <db:CUST_ACCT_SITE_ID>
                  <xsl:value-of select="/db:selectNoItemBillToFromEBSOutputCollection/db:selectNoItemBillToFromEBSOutput[$Index]/db:CUST_ACCT_SITE_ID"/>
               </db:CUST_ACCT_SITE_ID>
               <db:ADDRESS1>
                  <xsl:value-of select="/db:selectNoItemBillToFromEBSOutputCollection/db:selectNoItemBillToFromEBSOutput[$Index]/db:ADDRESS1"/>
               </db:ADDRESS1>
               <db:ADDRESS2>
                  <xsl:value-of select="/db:selectNoItemBillToFromEBSOutputCollection/db:selectNoItemBillToFromEBSOutput[$Index]/db:ADDRESS2"/>
               </db:ADDRESS2>
               <db:ADDRESS3>
                  <xsl:value-of select="/db:selectNoItemBillToFromEBSOutputCollection/db:selectNoItemBillToFromEBSOutput[$Index]/db:ADDRESS3"/>
               </db:ADDRESS3>
               <db:CITY>
                  <xsl:value-of select="/db:selectNoItemBillToFromEBSOutputCollection/db:selectNoItemBillToFromEBSOutput[$Index]/db:CITY"/>
               </db:CITY>
               <db:POSTAL_CODE>
                  <xsl:value-of select="/db:selectNoItemBillToFromEBSOutputCollection/db:selectNoItemBillToFromEBSOutput[$Index]/db:POSTAL_CODE"/>
               </db:POSTAL_CODE>
               <db:STATE>
                  <xsl:value-of select="/db:selectNoItemBillToFromEBSOutputCollection/db:selectNoItemBillToFromEBSOutput[$Index]/db:STATE"/>
               </db:STATE>
               <db:COUNTRY>
                  <xsl:value-of select="/db:selectNoItemBillToFromEBSOutputCollection/db:selectNoItemBillToFromEBSOutput[$Index]/db:COUNTRY"/>
               </db:COUNTRY>
               <db:PRIMARY_FLAG>
                  <xsl:value-of select="/db:selectNoItemBillToFromEBSOutputCollection/db:selectNoItemBillToFromEBSOutput[$Index]/db:PRIMARY_FLAG"/>
               </db:PRIMARY_FLAG>              
               <db:OU_SHORT_CODE>
                  <xsl:value-of select="/db:selectNoItemBillToFromEBSOutputCollection/db:selectNoItemBillToFromEBSOutput[$Index]/db:OU_SHORT_CODE"/>
               </db:OU_SHORT_CODE>
               
            </db:selectNoItemBillToFromEBSOutput>
         </xsl:for-each>
      </db:selectNoItemBillToFromEBSOutputCollection>
   </xsl:template>
</xsl:stylesheet>