<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="2.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns4="http://www.sunpowercorp.com/SunPowerDevelopment/DeleteSFDCRecordService/initParams/xsd/v1" xmlns:ns2="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns3="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 plnk soap wsdl ns6 ns4 client ns7 ns2 ens ns1 ns5 fns xsd ns3 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:param name="InvSFDCServiceQueryMore_OV.parameters"/>
   <xsl:template match="/">
      <ns3:delete>
         <xsl:variable name="StartIndex" select="/ns4:InitParams/ns4:startIndex"/>
         <xsl:variable name="EndIndex" select="/ns4:InitParams/ns4:endIndex"/>
         <xsl:for-each select="$StartIndex to $EndIndex">
            <xsl:variable name="Index" select="."/>
            <ns3:ids>
               <xsl:value-of select="$InvSFDCServiceQueryMore_OV.parameters/ns3:queryMoreResponse/ns3:result/ns3:records[$Index]/ens:Id[1]"/>
            </ns3:ids>
         </xsl:for-each>
      </ns3:delete>
   </xsl:template>
</xsl:stylesheet>