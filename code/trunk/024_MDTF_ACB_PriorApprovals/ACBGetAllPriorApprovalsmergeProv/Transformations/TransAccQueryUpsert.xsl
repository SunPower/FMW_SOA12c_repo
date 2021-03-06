<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns6="http://www.sunpowercorp.com/Common/ACBApproverToSFDCCommonTypes/V1" xmlns:ns4="http://www.sunpowercorp.com/ACBAccountClaimToSFDCDetails" xmlns:ns8="http://www.sunpowercorp.com/Noun/ACBApproverToSFDC/V1" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessACBApproverToSFDC/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns5="http://www.sunpowercorp.com/SunPowerDevelopment/DealerPartnerCreditINFO/EnqueSyncCreditHoldLimit/initParams/xsd/v1" xmlns:ns9="http://www.sunpowercorp.com/ACBAccountApproverToSFDCDetails" xmlns:ns2="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns3="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns7="http://www.sunpowercorp.com/ACBAccountApproverToSFDCMergeDetails" xmlns:tns="urn:partner.soap.sforce.com" xmlns:client="http://www.sunpowercorp.com/MarketingNTrainingActAppClmACBToSFDC/ACBGetAllPriorApprovalsmergeProv/ACBGetAllPriorApprovalsmergeProv_BPEL" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns6 ns4 ns8 ns0 ns1 plnk soap wsdl ns5 ns9 ns2 ens ns3 fns xsd ns7 tns client xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/partner.wsdl"/>
            <oracle-xsl-mapper:rootElement name="queryResponse" namespace="urn:partner.soap.sforce.com"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/ACBGetAllPriorApprovalsmergeProv_BPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ACBAccountApproverToSFDCRows" namespace="http://www.sunpowercorp.com/ACBAccountApproverToSFDCDetails"/>
            <oracle-xsl-mapper:param name="ACBApproverAccount"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/partner.wsdl"/>
            <oracle-xsl-mapper:rootElement name="upsert" namespace="urn:partner.soap.sforce.com"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [FRI OCT 07 18:01:02 IST 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="ACBApproverAccount"/>
  <xsl:template match="/">
    <tns:upsert>
      <tns:externalIDFieldName>
        <xsl:text disable-output-escaping="no">Id</xsl:text>
      </tns:externalIDFieldName>
      <xsl:for-each select="$ACBApproverAccount/ns9:ACBAccountApproverToSFDCRows/ns9:row">
        <xsl:variable name="InputRow" select="."/>
        <xsl:for-each select="/tns:queryResponse/tns:result/tns:records">
          <xsl:variable name="SFDCRow" select="."/>
          <xsl:if test="$InputRow/ns9:ACBParanetID__c = ens:ACBParanet_ID__c">
            <tns:sObjects>
              <ens:type>
                <xsl:text disable-output-escaping="no">MDTF_Prior_Approvals__c</xsl:text>
              </ens:type>
              <ens:Account__c>
                <xsl:value-of select="ens:Id"/>
              </ens:Account__c>
              <ens:Promotion__c>
                <xsl:value-of select="$InputRow/ns9:Promotion__c"/>
              </ens:Promotion__c>
              <ens:Promotion_Description__c>
                <xsl:value-of select="$InputRow/ns9:Promotion_Description__c"/>
              </ens:Promotion_Description__c>
              <ens:Promotion_Year__c>
                <xsl:value-of select="$InputRow/ns9:Promotion_Year__c"/>
              </ens:Promotion_Year__c>
              <xsl:choose>
                <xsl:when test="$InputRow/ns9:Appr_Num__c = &quot;&quot;">
                  <ens:Appr_Num__c>
                    <xsl:text disable-output-escaping="no">0</xsl:text>
                  </ens:Appr_Num__c>
                </xsl:when>
                <xsl:otherwise>
                  <ens:Appr_Num__c>
                    <xsl:value-of select="$InputRow/ns9:Appr_Num__c"/>
                  </ens:Appr_Num__c>
                </xsl:otherwise>
              </xsl:choose>
              <ens:Media__c>
                <xsl:value-of select="$InputRow/ns9:Media__c"/>
              </ens:Media__c>
              <ens:Media_Description__c>
                <xsl:value-of select="$InputRow/ns9:Media_Description__c"/>
              </ens:Media_Description__c>
              <xsl:choose>
                <xsl:when test="$InputRow/ns9:Estimated_cost__c = &quot;&quot;">
                  <ens:Estimated_cost__c>
                    <xsl:text disable-output-escaping="no">0</xsl:text>
                  </ens:Estimated_cost__c>
                </xsl:when>
                <xsl:otherwise>
                  <ens:Estimated_cost__c>
                    <xsl:value-of select="$InputRow/ns9:Estimated_cost__c"/>
                  </ens:Estimated_cost__c>
                </xsl:otherwise>
              </xsl:choose>
              <xsl:choose>
                <xsl:when test="$InputRow/ns9:Balance= &quot;&quot;">
                  <ens:Balance__c>
                    <xsl:text disable-output-escaping="no">0</xsl:text>
                  </ens:Balance__c>
                </xsl:when>
                <xsl:otherwise>
                  <ens:Balance__c>
                    <xsl:value-of select="$InputRow/ns9:Balance"/>
                  </ens:Balance__c>
                </xsl:otherwise>
              </xsl:choose>
              <ens:ACBParanet_ID__c>
                <xsl:value-of select="ens:ACBParanet_ID__c"/>
              </ens:ACBParanet_ID__c>
              <xsl:choose>
                <xsl:when test="$InputRow/ns9:Open_Amount__c = &quot;&quot;">
                  <ens:Open_Amount__c>
                    <xsl:text disable-output-escaping="no">0</xsl:text>
                  </ens:Open_Amount__c>
                </xsl:when>
                <xsl:otherwise>
                  <ens:Open_Amount__c>
                    <xsl:value-of select="$InputRow/ns9:Open_Amount__c"/>
                  </ens:Open_Amount__c>
                </xsl:otherwise>
              </xsl:choose>
            </tns:sObjects>
          </xsl:if>
        </xsl:for-each>
      </xsl:for-each>
    </tns:upsert>
  </xsl:template>
</xsl:stylesheet>