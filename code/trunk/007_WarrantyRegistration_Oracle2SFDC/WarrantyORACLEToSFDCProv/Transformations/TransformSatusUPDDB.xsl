<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns8="http://www.sunpowercorp.com/Common/WarrantyOracleToSFDCCommonTypes/V1" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:ns2="http://www.sunpowercorp.com/BOD/ProcessWarrantyOracleToSFDC/V1" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns3="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns6="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateSalesOrderDB" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessWarratyFDS2SFDC/V1" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns7="http://www.sunpowercorp.com/Noun/WarrantyOracleToSFDC/V1" xmlns:ns5="http://schemas.oracle.com/bpel/extension" xmlns:client="http://www.sunpowercorp.com/WarrantyRegistrationOracleToSFDC/WarrantyORACLEToSFDCProv/WarrantyORACLEToSFDCProv_BPEL" xmlns:ns4="urn:partner.soap.sforce.com" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/WarrantyRegistrationOracleToSFDC/WarrantyORACLEToSFDCProv/UpdateSalesOrderDB" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns8 ns0 plnk soap ns2 wsdl ns3 ens ns6 fns ns1 xsd ns7 ns5 client ns4 top tns xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WarrantyORACLEToSFDCProv_BPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ProcessWarrantyOracleToSFDC" namespace="http://www.sunpowercorp.com/BOD/ProcessWarrantyOracleToSFDC/V1"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../partner.wsdl"/>
            <oracle-xsl-mapper:rootElement name="upsertResponse" namespace="urn:partner.soap.sforce.com"/>
            <oracle-xsl-mapper:param name="InvokeSFDCSvc_upsert_OV.parameters"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../UpdateSalesOrderDB.wsdl"/>
            <oracle-xsl-mapper:rootElement name="SalesOrdDetCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateSalesOrderDB"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [WED OCT 05 17:45:58 IST 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="InvokeSFDCSvc_upsert_OV.parameters"/>
  <xsl:template match="/">
    <top:SalesOrdDetCollection>
      <xsl:for-each select="/ns2:ProcessWarrantyOracleToSFDC/ns2:DataArea/ns7:WROracleToSFDC/ns7:WRORACLEToSFDCDetails">
        <xsl:variable name="pos" select="position()"/>
        <top:SalesOrdDet>
          <top:no>
            <xsl:value-of select="/ns2:ProcessWarrantyOracleToSFDC/ns2:DataArea/ns7:WROracleToSFDC/ns7:WRORACLEToSFDCDetails[$pos]/ns8:No"/>
          </top:no>
          <xsl:choose>
            <xsl:when test="$InvokeSFDCSvc_upsert_OV.parameters/ns4:upsertResponse/ns4:result[$pos]/ns4:success = &quot;true&quot;">
              <top:sfdcStatus>
                <xsl:text disable-output-escaping="no">COMPLETED</xsl:text>
              </top:sfdcStatus>
            </xsl:when>
            <xsl:when test="($InvokeSFDCSvc_upsert_OV.parameters/ns4:upsertResponse/ns4:result[$pos]/ns4:success = &quot;false&quot;) and (contains(&quot;$InvokeSFDCSvc_upsert_OV.parameters/ns4:upsertResponse/ns4:result[$pos]/ns4:errors/ns4:message&quot;,&quot;Not saved due to blank delivery no, packing slip.&quot;) or contains(&quot;$InvokeSFDCSvc_upsert_OV.parameters/ns4:upsertResponse/ns4:result[$pos]/ns4:errors/ns4:message&quot;,&quot;Packing_Slip__c not specified&quot;))">
              <top:sfdcStatus>
                <xsl:text disable-output-escaping="no"/>
              </top:sfdcStatus>
            </xsl:when>
            <xsl:otherwise>
              <top:sfdcStatus>
                <xsl:text disable-output-escaping="no">ERROR</xsl:text>
              </top:sfdcStatus>
            </xsl:otherwise>
          </xsl:choose>
          <top:sfdcDatePushed>
            <xsl:value-of select="xp20:current-dateTime()"/>
          </top:sfdcDatePushed>
          <xsl:choose>
            <xsl:when test="($InvokeSFDCSvc_upsert_OV.parameters/ns4:upsertResponse/ns4:result[$pos]/ns4:errors/ns4:message != &quot;&quot;) and contains(&quot;$InvokeSFDCSvc_upsert_OV.parameters/ns4:upsertResponse/ns4:result[$pos]/ns4:errors/ns4:message&quot;,&quot;Packing_Slip__c not specified&quot;)">
              <top:sfdcRemarks>
                <xsl:text disable-output-escaping="no">Not saved due to blank delivery no, packing slip.</xsl:text>
              </top:sfdcRemarks>
            </xsl:when>
            <xsl:otherwise>
              <top:sfdcRemarks>
                <xsl:value-of select="$InvokeSFDCSvc_upsert_OV.parameters/ns4:upsertResponse/ns4:result[$pos]/ns4:errors/ns4:message"/>
              </top:sfdcRemarks>
            </xsl:otherwise>
          </xsl:choose>
        </top:SalesOrdDet>
      </xsl:for-each>
    </top:SalesOrdDetCollection>
  </xsl:template>
</xsl:stylesheet>