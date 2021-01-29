<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="2.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/selecteNoItemOperatingUnitFromEBS" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:client="http://www.sunpowercorp.com/OnlineOrderingNoItemOracleToSFDC/EnqueOracleSFDCNoItemOperatingUnit/EnqueOracleSFDCNoItemOperatingUnit_BPEL" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://www.sunpowercorp.com/SunPowerDevelopment/indexInputParams/xsd/v1" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/OnlineOrderingNoItemOracleToSFDC/EnqueOracleSFDCNoItemOperatingUnit/selecteNoItemOperatingUnitFromEBS" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl db client plt xsd ns1 wsdl tns bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:param name="initParams"/>
   <xsl:template match="/">
      <db:selecteNoItemOperatingUnitFromEBSOutputCollection>
         <xsl:variable name="StartIndex" select="$initParams/ns1:InitParams/ns1:startIndex"/>
         <xsl:variable name="EndIndex" select="$initParams/ns1:InitParams/ns1:endIndex"/>
         <xsl:for-each select="$StartIndex to $EndIndex">
            <xsl:variable name="Index" select="."/>
            <db:selecteNoItemOperatingUnitFromEBSOutput>
               <db:ACCOUNT_NUMBER>
                  <xsl:value-of select="/db:selecteNoItemOperatingUnitFromEBSOutputCollection/db:selecteNoItemOperatingUnitFromEBSOutput[$Index]/db:ACCOUNT_NUMBER"/>
               </db:ACCOUNT_NUMBER>
               <db:OU_SHORT_CODE>
                  <xsl:value-of select="/db:selecteNoItemOperatingUnitFromEBSOutputCollection/db:selecteNoItemOperatingUnitFromEBSOutput[$Index]/db:OU_SHORT_CODE"/>
               </db:OU_SHORT_CODE>
                <db:DESIGN_SPOT_CHECK_REVIEW_FLAG>
                  <xsl:value-of select="/db:selecteNoItemOperatingUnitFromEBSOutputCollection/db:selecteNoItemOperatingUnitFromEBSOutput[$Index]/db:DESIGN_SPOT_CHECK_REVIEW_FLAG"/>
               </db:DESIGN_SPOT_CHECK_REVIEW_FLAG>
                <db:LOYALTY_PARTNER>
                  <xsl:value-of select="/db:selecteNoItemOperatingUnitFromEBSOutputCollection/db:selecteNoItemOperatingUnitFromEBSOutput[$Index]/db:LOYALTY_PARTNER"/>
               </db:LOYALTY_PARTNER>
                <db:MW_COMMITTED>
                  <xsl:value-of select="/db:selecteNoItemOperatingUnitFromEBSOutputCollection/db:selecteNoItemOperatingUnitFromEBSOutput[$Index]/db:MW_COMMITTED"/>
               </db:MW_COMMITTED>
               <db:CUSTOMER_GROUP>
                  <xsl:value-of select="/db:selecteNoItemOperatingUnitFromEBSOutputCollection/db:selecteNoItemOperatingUnitFromEBSOutput[$Index]/db:CUSTOMER_GROUP"/>
               </db:CUSTOMER_GROUP>
            </db:selecteNoItemOperatingUnitFromEBSOutput>
         </xsl:for-each>
      </db:selecteNoItemOperatingUnitFromEBSOutputCollection>
   </xsl:template>
</xsl:stylesheet>