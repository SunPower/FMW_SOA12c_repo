<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:client="http://www.sunpowercorp.com/WarrantyRegistrationFDSToSFDC/WarrantyFDSToSFDCProv/WarrantyFDSToSFDCProv_BPEL" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateFDSDB" xmlns:ns5="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessWarratyFDSToSFDC/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns2="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/WarrantyRegistrationFDSToSFDC/WarrantyFDSToSFDCProv/UpdateFDSDB" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns6="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ns0="http://www.sunpowercorp.com/Common/WarrantyFDSToSFDCCommonTypes/V1" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns7="http://www.sunpowercorp.com/Noun/WarrantyFDSToSFDC/V1" xmlns:ns4="http://schemas.oracle.com/bpel/extension" xmlns:ns3="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl client ns5 ns1 plnk soap wsdl ns2 ens ns6 fns ns0 xsd ns7 ns4 ns3 top tns xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:param name="InvSFDCUpsert_OV.parameters"/>
   <xsl:template match="/">
      <top:WarrantyViewFlushCollection>
         <xsl:for-each select="$InvSFDCUpsert_OV.parameters/ns3:upsertResponse/ns3:result">
            <xsl:variable name="Count" select="position()"/>
            <top:WarrantyViewFlush>
               <top:id>
                  <xsl:value-of select="/ns1:ProcessWarrantyFDSToSFDC/ns1:DataArea/ns7:WRFDS2SFDC/ns7:WRFDSToSFDCDetails[$Count]/ns0:ID"/>
               </top:id>
               <xsl:choose>
                  <xsl:when test="ns3:success = &quot;true&quot;">
                     <top:sfdcStatus>
                        <xsl:text disable-output-escaping="no">COMPLETED</xsl:text>
                     </top:sfdcStatus>
                  </xsl:when>
                  <xsl:otherwise>
                     <top:sfdcStatus>
                        <xsl:text disable-output-escaping="no">Error</xsl:text>
                     </top:sfdcStatus>
                  </xsl:otherwise>
               </xsl:choose>
               <top:sfdcStatusDate>
                  <xsl:value-of select="xp20:current-dateTime()"/>
               </top:sfdcStatusDate>
               <top:sfdcRemarks>
                  <xsl:value-of select="ns3:errors/ns3:message"/>
               </top:sfdcRemarks>
            </top:WarrantyViewFlush>
         </xsl:for-each>
      </top:WarrantyViewFlushCollection>
   </xsl:template>
</xsl:stylesheet>