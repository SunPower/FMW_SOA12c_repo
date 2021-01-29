<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:inp1="http://www.sunpowercorp.com/SOAUtilityServices/CommonSFDCErrorLogService/CommonSFDCErrorLogService_BPEL" xmlns:client="http://www.sunpowercorp.com/WarrantyRegistrationFDSToSFDC/WarrantyFDSToSFDCProv/WarrantyFDSToSFDCProv_BPEL" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns5="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessWarratyFDSToSFDC/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:tns="http://xmlns.oracle.com/testingapplication/CommonSFDCErrorLogService/CallCommSFDCErrMediator" xmlns:ns2="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns6="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ns0="http://www.sunpowercorp.com/Common/WarrantyFDSToSFDCCommonTypes/V1" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns4="http://schemas.oracle.com/bpel/extension" xmlns:ns7="http://www.sunpowercorp.com/Noun/WarrantyFDSToSFDC/V1" xmlns:ns3="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl inp1 client ns5 ns1 plnk wsdl tns ns2 ns6 ns0 xsd ns4 ns7 ns3 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:param name="CommErr.request"/>
   <xsl:template match="/">
      <inp1:CommonSFDCErrorLog>
         <inp1:CommonErrorHandlerInputDetails>
            <inp1:InstanceNumber>
               <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:InstanceNumber"/>
            </inp1:InstanceNumber>
            <inp1:InterfaceNumber>
               <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:InterfaceNumber"/>
            </inp1:InterfaceNumber>
            <inp1:InterfaceName>
               <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:InterfaceName"/>
            </inp1:InterfaceName>
            <inp1:ProcessName>
               <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:ProcessName"/>
            </inp1:ProcessName>
            <inp1:Severity>
               <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Severity"/>
            </inp1:Severity>
            <inp1:Fault>
               <inp1:FaultCode>
                  <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Fault/inp1:FaultCode"/>
               </inp1:FaultCode>
               <inp1:FaultDescription>
                  <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Fault/inp1:FaultDescription"/>
               </inp1:FaultDescription>
               <inp1:FaultMessage>
                  <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Fault/inp1:FaultMessage"/>
               </inp1:FaultMessage>
               <inp1:FaultTime>
                  <xsl:value-of select="xp20:current-dateTime()"/>
               </inp1:FaultTime>
            </inp1:Fault>
            <inp1:FaultSystemName>
               <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:FaultSystemName"/>
            </inp1:FaultSystemName>
            <inp1:bOpenServiceTicket>
               <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:bOpenServiceTicket"/>
            </inp1:bOpenServiceTicket>
            <inp1:CorrectiveAction>
               <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:CorrectiveAction"/>
            </inp1:CorrectiveAction>
            <xsl:for-each select="/ns1:ProcessWarrantyFDSToSFDC/ns1:DataArea/ns7:WRFDS2SFDC/ns7:WRFDSToSFDCDetails">
               <inp1:UniqueIdentNum>
                  <inp1:UniqueIdentifier>
                     <xsl:value-of select="ns0:ID"/>
                  </inp1:UniqueIdentifier>
               </inp1:UniqueIdentNum>
            </xsl:for-each>
            <inp1:SendEmail>
               <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:SendEmail"/>
            </inp1:SendEmail>
            <inp1:status>
               <xsl:text disable-output-escaping="no">E</xsl:text>
            </inp1:status>
            <inp1:createddatetime>
               <xsl:value-of select="xp20:current-dateTime()"/>
            </inp1:createddatetime>
            <inp1:Related_Object_ID__c>
               <xsl:text disable-output-escaping="no">WR_FDS_Product__c</xsl:text>
            </inp1:Related_Object_ID__c>
            <inp1:SFDCErrObj>
               <xsl:text disable-output-escaping="no">Y</xsl:text>
            </inp1:SFDCErrObj>
         </inp1:CommonErrorHandlerInputDetails>
      </inp1:CommonSFDCErrorLog>
   </xsl:template>
</xsl:stylesheet>