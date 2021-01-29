<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:client="http://www.sunpowercorp.com/CRDSFDCToOracle/SyncOEHeadersOracleProv/SyncOEHeadersOracleProv_BPEL" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ns7="http://www.sunpowercorp.com/Common/SyncOEOrdersCommonTypes/V1" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessSyncOEOrders/V1" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns5="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns3="http://www.sunpowercorp.com/SunPowerDevelopment/utility/BatchEmailUtilityService/xsd/V1" xmlns:ns4="http://www.sunpowercorp.com/CRD/SyncOEHeadersOracleProv/xsd/V1" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns6="http://www.sunpowercorp.com/Noun/SyncOEOrders/V1" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns2="http://schemas.oracle.com/bpel/extension" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 plnk client wsdl ns7 ns1 ns5 ns3 ns4 ns6 xsd ns2 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/SyncOEHeadersOracleProv_BPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="inputParams" namespace="http://www.sunpowercorp.com/CRD/SyncOEHeadersOracleProv/xsd/V1"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/SyncOEHeadersOracleProv_BPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="EmailContent" namespace="http://www.sunpowercorp.com/SunPowerDevelopment/utility/BatchEmailUtilityService/xsd/V1"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [TUE OCT 11 11:42:59 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <ns3:EmailContent>
      <ns3:To>
        <xsl:value-of select="/ns4:inputParams/ns4:params/ns4:To"/>
      </ns3:To>
      <ns3:Subject>
        <xsl:text disable-output-escaping="no">ACTION REQUIRED - SFDC CRD Changes not sent to Oracle.</xsl:text>
      </ns3:Subject>
      
       <xsl:variable name="psrTableHeader" select="&quot;&lt;table border='1'>&lt;tr>&lt;th bgcolor='#C0C0C0'>&lt;b>Order No&lt;/b>&lt;/th> &lt;th bgcolor='#C0C0C0'>&lt;b>Partner&lt;/b>&lt;/th> &lt;th bgcolor='#C0C0C0'>&lt;b>PSR Name&lt;/b>&lt;/th> &lt;th bgcolor='#C0C0C0'>&lt;b>CRD Change Submitted (GMT)&lt;/b>&lt;/th> &lt;/tr> &quot;"/>
                    
      <xsl:variable name="psrTableBody">
        <xsl:value-of select="concat(&quot;&lt;tr>&lt;td>&quot;,/ns4:inputParams/ns4:params/ns4:ORDER_NUMBER,&quot;&lt;/td>&lt;td>&quot;,/ns4:inputParams/ns4:params/ns4:PARTNER_NAME,&quot;&lt;/td>&lt;td>&quot;,/ns4:inputParams/ns4:params/ns4:PSR_NAME,&quot;&lt;/td>&lt;td>&quot;,/ns4:inputParams/ns4:params/ns4:LastModifiedDate,&quot;&lt;/td>&lt;/tr>&quot;)"/>
      </xsl:variable>      
      
      
      
      <xsl:variable name="itSuportTableHeader" select="&quot;&lt;table border='1'>&lt;tr>&lt;th bgcolor='#C0C0C0' WIDTH='10%'>&lt;b>Order No&lt;/b>&lt;/th> &lt;th bgcolor='#C0C0C0' WIDTH='94%'>&lt;b>Fault Message Id&lt;/b>&lt;/th> &lt;/tr> &quot;"/>
      <xsl:variable name="itSuportTableBody">
        
          <xsl:value-of select="concat(&quot;&lt;tr>&lt;td>&quot;,/ns4:inputParams/ns4:params/ns4:ORDER_NUMBER,&quot;&lt;/td>&lt;td>&quot;,/ns4:inputParams/ns4:params/ns4:Fault_Message,&quot;&lt;/td>&lt;/tr>&quot;)"/>
      
      </xsl:variable>
      
      
      <ns3:body>
       <xsl:value-of select="concat(&quot;Hello PSR team: &lt;br/> &lt;br/>  The following Order CRD Changes could not be sent from SFDC to Oracle.  Please wait 20 mins, and then re-trigger this change request in SFDC by doing the following: &lt;br/> &lt;br/> 1)         Search for Order &lt;br/> 2)         Click on Edit &lt;br/> 3)         Save the Order WITHOUT making any changes.  &lt;br/> &lt;br/>&quot;,$psrTableHeader,$psrTableBody,&quot;&lt;/table> &lt;br/> Thanks, &lt;br/> CRM Support Team &lt;br/> &lt;br/>&quot;,&quot;&lt;hr/>Please ignore.  The following section is for IT Support Team only. &lt;br/> &lt;br/> BPEL Instance Id:&quot;,/ns4:inputParams/ns4:params/ns4:Instance_ID,&quot;&lt;br/>Process Name:&quot;,/ns4:inputParams/ns4:params/ns4:Process_Name,&quot;&lt;br/> &lt;br/> &quot;$itSuportTableHeader,$itSuportTableBody,&quot;&lt;/table> &lt;br/> &lt;i> Note: This message was automatically generated, please do not reply to it &lt;/i> &lt;br/>&lt;br/>&lt;b>Thanks &amp; Regards&lt;/b>&lt;br/>Oracle SOA System Admin&quot;)"/>
      </ns3:body>
    </ns3:EmailContent>
  </xsl:template>
</xsl:stylesheet>