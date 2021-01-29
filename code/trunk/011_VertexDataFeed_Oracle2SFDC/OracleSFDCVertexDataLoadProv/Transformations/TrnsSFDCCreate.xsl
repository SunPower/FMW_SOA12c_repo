<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns5="http://www.sunpowercorp.com/SunPowerDevelopment/OracleSFDC_VertexDataLoad/OracleSFDC_VertexDataLoad_Prov/CustomParams/xsd/v1" xmlns:ns8="http://www.sunpowercorp.com/Noun/VertexDataFeed/V1" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://www.sunpowercorp.com/GeographyIDs/xsd/v1" xmlns:ns2="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessVertexDataFeedDetails/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:client="http://www.sunpowercorp.com/OracleSFDC_VertexDataLoad/OracleSFDCVertexDataLoadProv/OracleSFDCVertexDataLoadProv_BPEL" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns7="http://www.sunpowercorp.com/Common/VertexDataFeedDetailsCommonTypes/V1" xmlns:ns4="http://xmlns.oracle.com/testingapplication/CommonSFDCErrorLogService/CallCommSFDCErrMediator" xmlns:ns3="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns6="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns5 ns8 ns0 ns2 ns1 plnk client soap wsdl ns7 ns4 ns3 ens ns6 fns xsd tns xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../partner.wsdl"/>
            <oracle-xsl-mapper:rootElement name="queryResponse" namespace="urn:partner.soap.sforce.com"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../OracleSFDCVertexDataLoadProv_BPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ProcessVertexDataFeedDetails" namespace="http://www.sunpowercorp.com/BOD/ProcessVertexDataFeedDetails/V1"/>
            <oracle-xsl-mapper:param name="inputVariable.payload"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../partner.wsdl"/>
            <oracle-xsl-mapper:rootElement name="create" namespace="urn:partner.soap.sforce.com"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [WED OCT 05 18:56:55 IST 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="inputVariable.payload"/>
  <xsl:template match="/">
    <tns:create>
      <xsl:for-each select="$inputVariable.payload/ns1:ProcessVertexDataFeedDetails/ns1:DataArea/ns8:VertexDataFeedDetail">
        <xsl:variable name="GeographyID" select="ns7:GeoGRAPHY_ID"/>
        <xsl:variable name="matchedCount" select="count(/tns:queryResponse/tns:result/tns:records[ens:Oracle_Geography_ID__c = $GeographyID]/ens:Id)"/>
        <xsl:if test="(/tns:queryResponse/tns:result/tns:records[(ens:Oracle_Geography_ID__c = $GeographyID)]/ens:Id = &quot;&quot;) or $matchedCount=0">
          <tns:sObjects>
            <ens:type>
              <xsl:text disable-output-escaping="no">Vertex_Address_Validation__c</xsl:text>
            </ens:type>
            <ens:Oracle_Geography_ID__c>
              <xsl:value-of select="ns7:GeoGRAPHY_ID"/>
            </ens:Oracle_Geography_ID__c>
            <ens:Geo_Country__c>
              <xsl:value-of select="ns7:COUNTRY"/>
            </ens:Geo_Country__c>
            <ens:Geo_City__c>
              <xsl:value-of select="ns7:CITY"/>
            </ens:Geo_City__c>
            <ens:Geo_County__c>
              <xsl:value-of select="ns7:COUNTY"/>
            </ens:Geo_County__c>
            <ens:Geo_State__c>
              <xsl:value-of select="ns7:STATE"/>
            </ens:Geo_State__c>
            <ens:Geo_Postal_Code__c>
              <xsl:value-of select="ns7:POSTAL_CODE"/>
            </ens:Geo_Postal_Code__c>            
          </tns:sObjects>
        </xsl:if>
      </xsl:for-each>
    </tns:create>
  </xsl:template>
</xsl:stylesheet>