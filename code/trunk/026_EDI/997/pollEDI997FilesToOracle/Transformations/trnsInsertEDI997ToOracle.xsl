<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://www.sunpowercorp.com/utilities/inputparam/xsd/v1" xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/EDICom/pollEDI997FilesToOracle/insertEDI997ToOracle" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:imp1="http://sunpowercorp.com/pollEDI997FileToOracle/InboundService/xsd/v1" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/insertEDI997ToOracle" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/file/EDICom/pollEDI997FilesToOracle/pollEDI997Files" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl pc plt wsdl ns0 imp1 jca tns xsd ns1 top xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../pollEDI997Files.wsdl"/>
            <oracle-xsl-mapper:rootElement name="Records" namespace="http://sunpowercorp.com/pollEDI997FileToOracle/InboundService/xsd/v1"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../pollEDI997Files.wsdl"/>
            <oracle-xsl-mapper:rootElement name="InputParams" namespace="http://www.sunpowercorp.com/utilities/inputparam/xsd/v1"/>
            <oracle-xsl-mapper:param name="inputParam"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../insertEDI997ToOracle.wsdl"/>
            <oracle-xsl-mapper:rootElement name="XxspwrEdi997_InboundStgCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/insertEDI997ToOracle"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <oracle-xsl-mapper:named-template-schema>
         <oracle-xsl-mapper:template name="convertDate">
            <oracle-xsl-mapper:mapSources/>
         </oracle-xsl-mapper:template>
      </oracle-xsl-mapper:named-template-schema>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [WED OCT 05 17:06:11 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="inputParam"/>
  <xsl:template match="/">
    <top:XxspwrEdi997_InboundStgCollection>
      <xsl:for-each select="/imp1:Records/imp1:record">
        <top:XxspwrEdi997_InboundStg>
          <top:controlNumber>
            <xsl:value-of select="imp1:CONTROL_NUMBER"/>
          </top:controlNumber>
          <top:signalType>
            <xsl:value-of select="imp1:SIGNAL_TYPE"/>
          </top:signalType>
          <top:ackType>
            <xsl:value-of select="imp1:ACK_TYPE"/>
          </top:ackType>
          <top:ackDate>
            <xsl:call-template name="convertDate">
              <xsl:with-param name="date" select="imp1:ACK_DATE"/>
            </xsl:call-template>
          </top:ackDate>
          <top:fileName>
            <xsl:value-of select="$inputParam/ns0:InputParams/ns0:fileName"/>
          </top:fileName>
          <top:errorCode>
            <xsl:value-of select="imp1:ERROR_CODE"/>
          </top:errorCode>
          <top:errorMessage>
            <xsl:value-of select="imp1:ERROR_MESSAGE"/>
          </top:errorMessage>
          <top:attribute1>
            <xsl:value-of select="imp1:ATTRIBUTE1"/>
          </top:attribute1>
          <top:attribute2>
            <xsl:value-of select="imp1:ATTRIBUTE2"/>
          </top:attribute2>
          <top:attribute3>
            <xsl:value-of select="imp1:ATTRIBUTE3"/>
          </top:attribute3>
          <top:attribute4>
            <xsl:value-of select="imp1:ATTRIBUTE4"/>
          </top:attribute4>
          <top:attribute5>
            <xsl:value-of select="imp1:ATTRIBUTE5"/>
          </top:attribute5>
          <top:attribute6>
            <xsl:value-of select="imp1:ATTRIBUTE6"/>
          </top:attribute6>
          <top:attribute7>
            <xsl:value-of select="imp1:ATTRIBUTE7"/>
          </top:attribute7>
          <top:attribute8>
            <xsl:value-of select="imp1:ATTRIBUTE8"/>
          </top:attribute8>
          <top:attribute9>
            <xsl:value-of select="imp1:ATTRIBUTE9"/>
          </top:attribute9>
          <top:attribute10>
            <xsl:value-of select="imp1:ATTRIBUTE10"/>
          </top:attribute10>
          <top:creationDate>
            <xsl:value-of select="xp20:current-dateTime()"/>
          </top:creationDate>
          <top:createdBy>
            <xsl:text disable-output-escaping="no">-1</xsl:text>
          </top:createdBy>
          <top:lastUpdatedBy>
            <xsl:text disable-output-escaping="no">-1</xsl:text>
          </top:lastUpdatedBy>
          <top:lastUpdatedDate>
            <xsl:value-of select="xp20:current-dateTime()"/>
          </top:lastUpdatedDate>
        </top:XxspwrEdi997_InboundStg>
      </xsl:for-each>
    </top:XxspwrEdi997_InboundStgCollection>
  </xsl:template>
  <xsl:template name="convertDate">
    <xsl:param name="date"/>
    <xsl:value-of select="substring($date,7,4)"/>
    <xsl:value-of select="'-'"/>
    <xsl:value-of select="substring($date,4,2)"/>
    <xsl:value-of select="'-'"/>
    <xsl:value-of select="substring($date,1,2)"/>
    <xsl:value-of select="'T'"/>
    <xsl:value-of select="substring-after($date,' ')"/>
    <xsl:value-of select="':00'"/>
  </xsl:template>
</xsl:stylesheet>