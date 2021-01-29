<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:client="http://xmlns.oracle.com/SFDCUtilityService/SFDCUtilityService" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns3="http://www.sunpowercorp.com/SFDCUtilityServiceIndex/xsd/v1" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns2="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl soap ens fns xsd tns client plnk wsdl ns3 ns2 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../partner.wsdl"/>
            <oracle-xsl-mapper:rootElement name="updateResponse" namespace="urn:partner.soap.sforce.com"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../SFDCUtilityService.wsdl"/>
            <oracle-xsl-mapper:rootElement name="updateResponse" namespace="http://xmlns.oracle.com/SFDCUtilityService/SFDCUtilityService"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [TUE OCT 04 12:46:08 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
  <client:updateResponse>
    <xsl:for-each select="/tns:updateResponse/tns:result">
      <client:result>
        <xsl:for-each select="tns:errors">
          <client:errors>
            <xsl:if test="tns:fields">
              <xsl:for-each select="tns:fields">
                <client:fields>
                  <xsl:if test="@xsi:nil">
                    <xsl:attribute name="xsi:nil">
                      <xsl:value-of select="@xsi:nil"/>
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="."/>
                </client:fields>
              </xsl:for-each>
            </xsl:if>
            <client:message>
              <xsl:value-of select="tns:message"/>
            </client:message>
            <client:statusCode>
              <xsl:value-of select="tns:statusCode"/>
            </client:statusCode>
          </client:errors>
        </xsl:for-each>
        <client:id>
          <xsl:if test="tns:id/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="tns:id/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="tns:id"/>
        </client:id>
        <client:success>
          <xsl:value-of select="tns:success"/>
        </client:success>
      </client:result>
    </xsl:for-each>
    </client:updateResponse>
  </xsl:template>
</xsl:stylesheet>