<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:inp1="http://www.sunpowercorp.com/SOAUtilityServices/CommonSFDCErrorLogService/CommonSFDCErrorLogService_BPEL" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://xmlns.oracle.com/testingapplication/CommonSFDCErrorLogService/CallCommSFDCErrMediator" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:imp1="http://xmlns.oracle.com/pcbpel/adapter/db/selecteNoItemOperatingUnitFromEBS" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/OnlineOrderingNoItemOracleToSFDC/OracleSFDCNoItemOperatingUnitReq/dequeueOracleSFDCNoItemOperatingUnit" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl inp1 pc plt wsdl ns0 imp1 jca tns xsd xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
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
            <xsl:for-each select="$InvCommonSFDCErrorLogService_IV.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:UniqueIdentNum">
               <inp1:UniqueIdentNum>
                  <inp1:UniqueIdentifier>
                     <xsl:value-of select="/imp1:selecteNoItemOperatingUnitFromEBSOutputCollection/imp1:selecteNoItemOperatingUnitFromEBSOutput/imp1:ACCOUNT_NUMBER"/>
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