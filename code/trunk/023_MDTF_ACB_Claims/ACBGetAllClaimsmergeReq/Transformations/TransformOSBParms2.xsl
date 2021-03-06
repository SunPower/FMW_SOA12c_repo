<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="2.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns4="http://www.sunpowercorp.com/Noun/ACBClaimToSFDC/V1" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:tns="http://www.acbcoop.com/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns6="http://www.sunpowercorp.com/Common/ACBClaimToSFDCCommonTypes/V1" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:ns3="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessACBClaimToSFDC/V1" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://www.sunpowercorp.com/SunPowerDevelopment/initParams/xsd/v1" xmlns:ns2="http://www.sunpowercorp.com/ACBClaimAll/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns5="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tm tns soap12 soapenc soap wsdl mime ns0 xsd http ns4 ns6 ns3 ns1 ns2 ns5 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/ACBClaimAll.wsdl"/>
            <oracle-xsl-mapper:rootElement name="GetAllClaimsResponse" namespace="http://www.acbcoop.com/"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="XSD">
            <oracle-xsl-mapper:schema location="../Schemas/inputParams.xsd"/>
            <oracle-xsl-mapper:rootElement name="InitParams" namespace="http://www.sunpowercorp.com/SunPowerDevelopment/initParams/xsd/v1"/>
            <oracle-xsl-mapper:param name="initParams"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="http://dev-fusappdca02.sunpowercorp.com:7004/ACBGetAllClaimsmergeSvc/Proxy/ACBGetAllClaimsmergeSvcPS?wsdl"/>
            <oracle-xsl-mapper:rootElement name="ProcessACBClaimToSFDC" namespace="http://www.sunpowercorp.com/BOD/ProcessACBClaimToSFDC/V1"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [FRI OCT 07 17:31:32 IST 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="initParams"/>
  <xsl:template match="/">
    <ns1:ProcessACBClaimToSFDC>
      <ns3:ApplicationArea>
        <ns3:Sender>
          <ns3:LogicalId>
            <xsl:text disable-output-escaping="no"/>
          </ns3:LogicalId>
          <ns3:ComponentId>
            <xsl:text disable-output-escaping="no"/>
          </ns3:ComponentId>
        </ns3:Sender>
      </ns3:ApplicationArea>
      <ns1:DataArea>
        <ns4:ACBClaimToSFDC>
        
            <xsl:variable name="StartIndex" select="$initParams/ns0:InitParams/ns0:startIndex"/>
            <xsl:variable name="EndIndex" select="$initParams/ns0:InitParams/ns0:endIndex"/>
            <xsl:for-each select="$StartIndex to $EndIndex">
              <xsl:variable name="Index" select="."/>
              <ns4:ACBClaimToSFDCDetails>
                <ns6:DlrNum>
                  <xsl:value-of select="/tns:GetAllClaimsResponse/tns:GetAllClaimsResult/tns:WebServiceClaims[$Index]/tns:DlrNum"/>
                </ns6:DlrNum>
                <ns6:DlrName>
                  <xsl:value-of select="/tns:GetAllClaimsResponse/tns:GetAllClaimsResult/tns:WebServiceClaims[$Index]/tns:DlrName"/>
                </ns6:DlrName>
                <ns6:Promotion>
                  <xsl:value-of select="/tns:GetAllClaimsResponse/tns:GetAllClaimsResult/tns:WebServiceClaims[$Index]/tns:Promotion"/>
                </ns6:Promotion>
                <ns6:PromotionDescription>
                  <xsl:value-of select="/tns:GetAllClaimsResponse/tns:GetAllClaimsResult/tns:WebServiceClaims[$Index]/tns:PromotionDescription"/>
                </ns6:PromotionDescription>
                <ns6:ProcessDate>
                  <xsl:value-of select="/tns:GetAllClaimsResponse/tns:GetAllClaimsResult/tns:WebServiceClaims[$Index]/tns:ProcessDate"/>
                </ns6:ProcessDate>
                <ns6:PreApprovalNumber>
                  <xsl:value-of select="/tns:GetAllClaimsResponse/tns:GetAllClaimsResult/tns:WebServiceClaims[$Index]/tns:PreApprovalNumber"/>
                </ns6:PreApprovalNumber>
                <ns6:ClaimNumber>
                  <xsl:value-of select="/tns:GetAllClaimsResponse/tns:GetAllClaimsResult/tns:WebServiceClaims[$Index]/tns:ClaimNumber"/>
                </ns6:ClaimNumber>
                <ns6:ActivityDescription>
                  <xsl:value-of select="/tns:GetAllClaimsResponse/tns:GetAllClaimsResult/tns:WebServiceClaims[$Index]/tns:ActivityDescription"/>
                </ns6:ActivityDescription>
                <ns6:ActivityFromDate>
                  <xsl:value-of select="/tns:GetAllClaimsResponse/tns:GetAllClaimsResult/tns:WebServiceClaims[$Index]/tns:ActivityFromDate"/>
                </ns6:ActivityFromDate>
                <ns6:ActivityToDate>
                  <xsl:value-of select="/tns:GetAllClaimsResponse/tns:GetAllClaimsResult/tns:WebServiceClaims[$Index]/tns:ActivityToDate"/>
                </ns6:ActivityToDate>
                <ns6:ClaimedAmt>
                  <xsl:value-of select="/tns:GetAllClaimsResponse/tns:GetAllClaimsResult/tns:WebServiceClaims[$Index]/tns:ClaimedAmt"/>
                </ns6:ClaimedAmt>
                <ns6:ApprovedAmt>
                  <xsl:value-of select="/tns:GetAllClaimsResponse/tns:GetAllClaimsResult/tns:WebServiceClaims[$Index]/tns:ApprovedAmt"/>
                </ns6:ApprovedAmt>
                <ns6:PaidAmt>
                  <xsl:value-of select="/tns:GetAllClaimsResponse/tns:GetAllClaimsResult/tns:WebServiceClaims[$Index]/tns:PaidAmt"/>
                </ns6:PaidAmt>
                <ns6:CreditMemo>
                  <xsl:value-of select="/tns:GetAllClaimsResponse/tns:GetAllClaimsResult/tns:WebServiceClaims[$Index]/tns:CreditMemo"/>
                </ns6:CreditMemo>
                <ns6:Comment>
                  <xsl:value-of select="/tns:GetAllClaimsResponse/tns:GetAllClaimsResult/tns:WebServiceClaims[$Index]/tns:Comment"/>
                </ns6:Comment>
                <ns6:RecordNumber>
                  <xsl:value-of select="/tns:GetAllClaimsResponse/tns:GetAllClaimsResult/tns:WebServiceClaims[$Index]/tns:RecordNumber"/>
                </ns6:RecordNumber>
              </ns4:ACBClaimToSFDCDetails>
            </xsl:for-each>
          
        </ns4:ACBClaimToSFDC>
      </ns1:DataArea>
    </ns1:ProcessACBClaimToSFDC>
  </xsl:template>
</xsl:stylesheet>