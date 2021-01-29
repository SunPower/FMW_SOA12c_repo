<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:inp1="http://www.sunpowercorp.com/SOAUtilityServices/CommonSFDCErrorLogService/CommonSFDCErrorLogService_BPEL" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessOracleSFDCNoItemOperatingUnit/V1" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:tns="http://xmlns.oracle.com/testingapplication/CommonSFDCErrorLogService/CallCommSFDCErrMediator" xmlns:ns3="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:ns5="http://www.sunpowercorp.com/Noun/OracleSFDCNoItemOperatingUnit/V1" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns6="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns7="http://www.sunpowercorp.com/Common/OracleSFDCNoItemOperatingUnitCommonTypes/V1" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:client="http://www.sunpowercorp.com/OnlineOrderingNoItemOracleToSFDC/OracleSFDCNoItemOperatingUnitProv/OracleSFDCNoItemOperatingUnitProv_BPEL" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns4="http://www.sunpowercorp.com/OnlineOrderingNoItemOracleToSFDC/OracleAccountNumbers/xsd/v1" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns2="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl inp1 ns1 ns0 plnk wsdl tns ns3 ns5 ns6 ns7 client ns4 xsd ns2 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:param name="InvCommonSFDCErrorLogService_IV.request"/>
   <xsl:template match="/">
      <inp1:CommonSFDCErrorLog>
         <inp1:CommonErrorHandlerInputDetails>
            <inp1:InstanceNumber>
               <xsl:value-of select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:InstanceNumber"/>
            </inp1:InstanceNumber>
            <inp1:InterfaceNumber>
               <xsl:value-of select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:InterfaceNumber"/>
            </inp1:InterfaceNumber>
            <inp1:InterfaceName>
               <xsl:value-of select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:InterfaceName"/>
            </inp1:InterfaceName>
            <inp1:ProcessName>
               <xsl:value-of select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:ProcessName"/>
            </inp1:ProcessName>
            <inp1:Severity>
               <xsl:value-of select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Severity"/>
            </inp1:Severity>
            <inp1:Fault>
               <inp1:FaultCode>
                  <xsl:value-of select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Fault/inp1:FaultCode"/>
               </inp1:FaultCode>
               <inp1:FaultDescription>
                  <xsl:value-of select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Fault/inp1:FaultDescription"/>
               </inp1:FaultDescription>
               <inp1:FaultMessage>
                  <xsl:value-of select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Fault/inp1:FaultMessage"/>
               </inp1:FaultMessage>
               <inp1:FaultTime>
                  <xsl:value-of select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Fault/inp1:FaultTime"/>
               </inp1:FaultTime>
            </inp1:Fault>
            <inp1:FaultSystemName>
               <xsl:value-of select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:FaultSystemName"/>
            </inp1:FaultSystemName>
            <inp1:bOpenServiceTicket>
               <xsl:value-of select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:bOpenServiceTicket"/>
            </inp1:bOpenServiceTicket>
            <inp1:CorrectiveAction>
               <xsl:value-of select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:CorrectiveAction"/>
            </inp1:CorrectiveAction>
            <xsl:for-each select="/ns1:ProcessOracleSFDCNoItemOperatingUnit/ns1:DataArea/ns5:OracleSFDCNoItemOperatingUnit/ns5:OracleSFDCNoItemOperatingUnitDetails">
               <inp1:UniqueIdentNum>
                  <inp1:UniqueIdentifier>
                     <xsl:value-of select="ns7:ORALCE_ACCOUNT_NUMBER"/>
                  </inp1:UniqueIdentifier>
               </inp1:UniqueIdentNum>
            </xsl:for-each>
            <inp1:SendEmail>
               <xsl:value-of select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:SendEmail"/>
            </inp1:SendEmail>
            <inp1:status>
               <xsl:value-of select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:status"/>
            </inp1:status>
            <inp1:createddatetime>
               <xsl:value-of select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:createddatetime"/>
            </inp1:createddatetime>
            <inp1:Related_Object_ID__c>
               <xsl:value-of select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Related_Object_ID__c"/>
            </inp1:Related_Object_ID__c>
            <inp1:Router_Host_Name__c>
               <xsl:value-of select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Router_Host_Name__c"/>
            </inp1:Router_Host_Name__c>
            <inp1:Salesforce_User_ID__c>
               <xsl:value-of select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Salesforce_User_ID__c"/>
            </inp1:Salesforce_User_ID__c>
            <inp1:SFDCErrObj>
               <xsl:value-of select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:SFDCErrObj"/>
            </inp1:SFDCErrObj>
         </inp1:CommonErrorHandlerInputDetails>
      </inp1:CommonSFDCErrorLog>
   </xsl:template>
</xsl:stylesheet>