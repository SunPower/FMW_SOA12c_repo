<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:inp1="http://www.sunpowercorp.com/SOAUtilityServices/CommonSFDCErrorLogService/CommonSFDCErrorLogService_BPEL" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://xmlns.oracle.com/testingapplication/CommonSFDCErrorLogService/CallCommSFDCErrMediator" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl inp1 soap wsdl ns0 ens fns xsd tns xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/partner.wsdl"/>
            <oracle-xsl-mapper:rootElement name="queryResponse" namespace="urn:partner.soap.sforce.com"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="http://dev-fusappdca02.sunpowercorp.com:7003/soa-infra/services/default/CommonSFDCErrorLogService!1.0/WSDLs/CallCommSFDCErrMediator.wsdl"/>
            <oracle-xsl-mapper:rootElement name="CommonSFDCErrorLog" namespace="http://www.sunpowercorp.com/SOAUtilityServices/CommonSFDCErrorLogService/CommonSFDCErrorLogService_BPEL"/>
            <oracle-xsl-mapper:param name="CommErr.request"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="http://dev-fusappdca02.sunpowercorp.com:7003/soa-infra/services/default/CommonSFDCErrorLogService!1.0/WSDLs/CallCommSFDCErrMediator.wsdl"/>
            <oracle-xsl-mapper:rootElement name="CommonSFDCErrorLog" namespace="http://www.sunpowercorp.com/SOAUtilityServices/CommonSFDCErrorLogService/CommonSFDCErrorLogService_BPEL"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [FRI OCT 07 18:01:02 IST 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
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
        <inp1:UniqueIdentifier>
          <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:UniqueIdentifier"/>
        </inp1:UniqueIdentifier>
        <inp1:SendEmail>
          <xsl:attribute name="xsi:nil">
            <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:SendEmail/@xsi:nil"/>
          </xsl:attribute>
          <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:SendEmail"/>
        </inp1:SendEmail>
      </inp1:CommonErrorHandlerInputDetails>
      <xsl:for-each select="/tns:queryResponse/tns:result/tns:records">
        <inp1:ProcessLogDetails>
          <inp1:faultmessage>
            <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Fault/inp1:FaultMessage"/>
          </inp1:faultmessage>
          <inp1:faultcode>
            <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Fault/inp1:FaultCode"/>
          </inp1:faultcode>
          <inp1:faulttime>
            <xsl:value-of select="xp20:current-dateTime()"/>
          </inp1:faulttime>
          <inp1:faultdescription>
            <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Fault/inp1:FaultDescription"/>
          </inp1:faultdescription>
          <inp1:correctiveaction>
            <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:CorrectiveAction"/>
          </inp1:correctiveaction>
          <inp1:interfacenumber>
            <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:InterfaceNumber"/>
          </inp1:interfacenumber>
          <inp1:interfacename>
            <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:InterfaceName"/>
          </inp1:interfacename>
          <inp1:instancenumber>
            <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:InstanceNumber"/>
          </inp1:instancenumber>
          <inp1:processname>
            <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:ProcessName"/>
          </inp1:processname>
          <inp1:bopenserviceticket>
            <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:bOpenServiceTicket"/>
          </inp1:bopenserviceticket>
          <inp1:severity>
            <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Severity"/>
          </inp1:severity>
          <inp1:faultsystemname>
            <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:FaultSystemName"/>
          </inp1:faultsystemname>
          <inp1:status>
            <xsl:text disable-output-escaping="no">E</xsl:text>
          </inp1:status>
          <inp1:createddatetime>
            <xsl:value-of select="xp20:current-dateTime()"/>
          </inp1:createddatetime>
          <inp1:uniqueIdentifier>
            <xsl:value-of select="ens:Account__c"/>
          </inp1:uniqueIdentifier>
          <inp1:emailSent>
            <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:SendEmail"/>
          </inp1:emailSent>
        </inp1:ProcessLogDetails>
      </xsl:for-each>
      <inp1:SFDCErrorObjectDetails>
        <inp1:Fault_Name__c>
          <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Fault/inp1:FaultMessage"/>
        </inp1:Fault_Name__c>
        <inp1:Fault_Time__c>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </inp1:Fault_Time__c>
        <inp1:Job_Start_Time__c>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </inp1:Job_Start_Time__c>
        <inp1:Message__c>
          <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Fault/inp1:FaultDescription"/>
        </inp1:Message__c>
        <inp1:Middleware_Job_ID__c>
          <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:InstanceNumber"/>
        </inp1:Middleware_Job_ID__c>
        <inp1:Orchestration_Name__c>
          <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:InterfaceName"/>
        </inp1:Orchestration_Name__c>
        <inp1:Project_Name__c>
          <xsl:value-of select="$CommErr.request/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:ProcessName"/>
        </inp1:Project_Name__c>
        <inp1:Router_Host_Name__c>
          <xsl:text disable-output-escaping="no">dev-fusappdca02.sunpowercorp.com</xsl:text>
        </inp1:Router_Host_Name__c>
        <inp1:Severity__c>
          <xsl:text disable-output-escaping="no">ERROR</xsl:text>
        </inp1:Severity__c>
        <inp1:SFDCErrObj>
          <xsl:text disable-output-escaping="no">Y</xsl:text>
        </inp1:SFDCErrObj>
      </inp1:SFDCErrorObjectDetails>
    </inp1:CommonSFDCErrorLog>
  </xsl:template>
</xsl:stylesheet>