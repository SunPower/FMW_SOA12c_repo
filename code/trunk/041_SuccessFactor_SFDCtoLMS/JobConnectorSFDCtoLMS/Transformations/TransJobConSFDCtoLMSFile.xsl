<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="2.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:imp1="http://www.sunpowercorp.com/WriteJobConSFDCToLMSFile" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/file/LMS/JobConnectorSFDCtoLMS/WriteJobConSFDCToLMSFile" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl soap ens fns xsd tns imp1 plt wsdl ns0 jca xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
                <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/partner.wsdl"/>
            <oracle-xsl-mapper:rootElement name="queryResponse" namespace="urn:partner.soap.sforce.com"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/WriteJobConSFDCToLMSFile.wsdl"/>
            <oracle-xsl-mapper:rootElement name="SFDCJOBCONLMSFlatFile" namespace="http://www.sunpowercorp.com/WriteJobConSFDCToLMSFile"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <oracle-xsl-mapper:named-template-schema>
         <oracle-xsl-mapper:template name="Tokenize">
            <oracle-xsl-mapper:mapSources/>
         </oracle-xsl-mapper:template>
      </oracle-xsl-mapper:named-template-schema>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [FRI OCT 07 19:52:35 IST 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <imp1:SFDCJOBCONLMSFlatFile>
      <imp1:Header>
        <imp1:STUD_ID>
          <xsl:text disable-output-escaping="no">STUD_ID</xsl:text>
        </imp1:STUD_ID>
        <imp1:JP_ID>
          <xsl:text disable-output-escaping="no">JP_ID</xsl:text>
        </imp1:JP_ID>
      </imp1:Header>
      
      <xsl:for-each select="/tns:queryResponse/tns:result/tns:records">
        <xsl:variable name="pos" select="position()"/>
        <xsl:variable name="Tokens">
          <xsl:call-template name="Tokenize">
            <xsl:with-param name="input" select="substring-after(/tns:queryResponse/tns:result/tns:records[$pos]/ens:Contact/ens:LMS_Job_ID__c,';')"/>
          </xsl:call-template>
          
        </xsl:variable>
        <xsl:for-each select="$Tokens/imp1:Tag">
        <xsl:variable name="tag" select="."/>
        <xsl:if test="$tag != &quot;&quot;">
            <imp1:SFDCJOBCONLMSFlatFileItems>
              <imp1:STUD_ID>
                <xsl:value-of select="/tns:queryResponse/tns:result/tns:records[$pos]/ens:Plateau_Id__c"/>
              </imp1:STUD_ID>
              <imp1:JP_ID>
                <xsl:value-of select="$tag"/>
              </imp1:JP_ID>
            </imp1:SFDCJOBCONLMSFlatFileItems>
          </xsl:if>
        </xsl:for-each>
      </xsl:for-each>
    </imp1:SFDCJOBCONLMSFlatFile>
  </xsl:template> <!--  User Defined Templates  --> <xsl:template name="Tokenize">
    <xsl:param name="input"/>
    <xsl:choose>
      <xsl:when test="contains($input,';')">
        <imp1:Tag>
          <xsl:value-of select="substring-before($input,';')"/>
        </imp1:Tag>
        <xsl:call-template name="Tokenize">
          <xsl:with-param name="input" select="substring-after($input,';')"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <imp1:Tag>
          <xsl:value-of select="$input"/>
        </imp1:Tag>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>