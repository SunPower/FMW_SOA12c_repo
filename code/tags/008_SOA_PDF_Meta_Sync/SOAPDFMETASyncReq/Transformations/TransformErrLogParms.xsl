<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:tns="http://xmlns.oracle.com/testingapplication/CommonSFDCErrorLogService/CallCommSFDCErrMediator" xmlns:inp1="http://www.sunpowercorp.com/SOAUtilityServices/CommonSFDCErrorLogService/CommonSFDCErrorLogService_BPEL" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tns inp1 xsd wsdl bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="http://dev-fusappdca02.sunpowercorp.com:7003/soa-infra/services/default/CommonSFDCErrorLogService/CallCommSFDCErrMediator.wsdl"/>
            <oracle-xsl-mapper:rootElement name="CommonSFDCErrorLog" namespace="http://www.sunpowercorp.com/SOAUtilityServices/CommonSFDCErrorLogService/CommonSFDCErrorLogService_BPEL"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="http://dev-fusappdca02.sunpowercorp.com:7003/soa-infra/services/default/CommonSFDCErrorLogService/CallCommSFDCErrMediator.wsdl"/>
            <oracle-xsl-mapper:rootElement name="CommonSFDCErrorLog" namespace="http://www.sunpowercorp.com/SOAUtilityServices/CommonSFDCErrorLogService/CommonSFDCErrorLogService_BPEL"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [THU OCT 06 10:31:06 IST 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <inp1:CommonSFDCErrorLog>
      <inp1:CommonErrorHandlerInputDetails>
        <inp1:InstanceNumber>
          <xsl:value-of select="/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:InstanceNumber"/>
        </inp1:InstanceNumber>
        <inp1:InterfaceNumber>
          <xsl:value-of select="/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:InterfaceNumber"/>
        </inp1:InterfaceNumber>
        <inp1:InterfaceName>
          <xsl:value-of select="/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:InterfaceName"/>
        </inp1:InterfaceName>
        <inp1:ProcessName>
          <xsl:value-of select="/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:ProcessName"/>
        </inp1:ProcessName>
        <inp1:Severity>
          <xsl:value-of select="/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Severity"/>
        </inp1:Severity>
        <inp1:Fault>
          <inp1:FaultCode>
            <xsl:value-of select="/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Fault/inp1:FaultCode"/>
          </inp1:FaultCode>
          <inp1:FaultDescription>
            <xsl:value-of select="/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Fault/inp1:FaultDescription"/>
          </inp1:FaultDescription>
          <inp1:FaultMessage>
            <xsl:value-of select="/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:Fault/inp1:FaultMessage"/>
          </inp1:FaultMessage>
          <inp1:FaultTime>
            <xsl:value-of select="xp20:current-dateTime()"/>
          </inp1:FaultTime>
        </inp1:Fault>
        <inp1:FaultSystemName>
          <xsl:value-of select="/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:FaultSystemName"/>
        </inp1:FaultSystemName>
        <inp1:bOpenServiceTicket>
          <xsl:value-of select="/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:bOpenServiceTicket"/>
        </inp1:bOpenServiceTicket>
        <inp1:CorrectiveAction>
          <xsl:value-of select="/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:CorrectiveAction"/>
        </inp1:CorrectiveAction>
        <inp1:UniqueIdentNum>
          <inp1:UniqueIdentifier>
            <xsl:text disable-output-escaping="no"/>
          </inp1:UniqueIdentifier>
        </inp1:UniqueIdentNum>
        <inp1:SendEmail>
          <xsl:value-of select="/inp1:CommonSFDCErrorLog/inp1:CommonErrorHandlerInputDetails/inp1:SendEmail"/>
        </inp1:SendEmail>
        <inp1:status>
          <xsl:text disable-output-escaping="no">E</xsl:text>
        </inp1:status>
        <inp1:createddatetime>
          <xsl:value-of select="xp20:current-dateTime()"/>
        </inp1:createddatetime>
        <inp1:SFDCErrObj>
          <xsl:text disable-output-escaping="no">N</xsl:text>
        </inp1:SFDCErrObj>
      </inp1:CommonErrorHandlerInputDetails>
    </inp1:CommonSFDCErrorLog>
  </xsl:template>
</xsl:stylesheet>