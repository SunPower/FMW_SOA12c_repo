<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="2.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://www.sunpowercorp.com/SunPowerDevelopment/DeleteSFDCRecordService/initParams/xsd/v1" xmlns:tns="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ens fns xsd soap ns0 tns bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:param name="InvSFDCServiceQuery_OV.parameters"/>
   <xsl:template match="/">
      <tns:delete>
         <xsl:variable name="StartIndex" select="/ns0:InitParams/ns0:startIndex"/>
         <xsl:variable name="EndIndex" select="/ns0:InitParams/ns0:endIndex"/>
         <xsl:for-each select="$StartIndex to $EndIndex">
            <xsl:variable name="Index" select="."/>
            <tns:ids>
               <xsl:value-of select="$InvSFDCServiceQuery_OV.parameters/tns:queryResponse/tns:result/tns:records[$Index]/ens:Id[1]"/>
            </tns:ids>
         </xsl:for-each>
      </tns:delete>
   </xsl:template>
</xsl:stylesheet>