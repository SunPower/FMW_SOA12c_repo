<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:tns="http://www.acbcoop.com/" xmlns:ns5="http://www.sunpowercorp.com/Common/ACBApproverToSFDCCommonTypes/V1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns6="http://www.sunpowercorp.com/Noun/ACBApproverToSFDC/V1" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:ns3="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessACBApproverToSFDC/V1" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://www.sunpowercorp.com/ACBClaimAll/" xmlns:ns2="http://www.sunpowercorp.com/BOD/ProcessACBActivitiesToSFDC/V1" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns4="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tm tns soap12 soapenc soap wsdl mime xsd http ns5 ns6 ns3 ns1 ns0 ns2 ns4 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/ACBApproverAll.wsdl"/>
            <oracle-xsl-mapper:rootElement name="GetAllPriorApprovalDetailsResponse" namespace="http://www.acbcoop.com/"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="http://dev-fusappdca02.sunpowercorp.com:7004/ACBGetAllPriorApSvcConfigalsmergeSvc/Proxy/ACBGetAllPriorApSvcConfigalsmergeSvcPS?wsdl"/>
            <oracle-xsl-mapper:rootElement name="ProcessACBApproverToSFDC" namespace="http://www.sunpowercorp.com/BOD/ProcessACBApproverToSFDC/V1"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [FRI OCT 07 18:16:04 IST 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <ns1:ProcessACBApproverToSFDC>
      <ns1:DataArea>
        <ns6:ACBApproverToSFDC>
          <xsl:for-each select="/tns:GetAllPriorApprovalDetailsResponse/tns:GetAllPriorApprovalDetailsResult/tns:WebServicePAs">
            <ns6:ACBApproverToSFDCDetails>
              <ns5:Promotion__c>
                <xsl:value-of select="tns:Promotion"/>
              </ns5:Promotion__c>
              <ns5:Promotion_Description__c>
                <xsl:value-of select="tns:PromotionDescription"/>
              </ns5:Promotion_Description__c>
              <ns5:Promotion_Year__c>
                <xsl:value-of select="tns:PromotionYear"/>
              </ns5:Promotion_Year__c>
              <ns5:Appr_Num__c>
                <xsl:value-of select="tns:ApprNum"/>
              </ns5:Appr_Num__c>
              <ns5:Date_From__c>
                <xsl:value-of select="tns:DateFrom"/>
              </ns5:Date_From__c>
              <ns5:Date_To__c>
                <xsl:value-of select="tns:DateTo"/>
              </ns5:Date_To__c>
              <ns5:Media__c>
                <xsl:value-of select="tns:Media"/>
              </ns5:Media__c>
              <ns5:Media_Description__c>
                <xsl:value-of select="tns:MediaDescription"/>
              </ns5:Media_Description__c>
              <ns5:Estimated_cost__c>
                <xsl:value-of select="tns:EstimatedCost"/>
              </ns5:Estimated_cost__c>
              <ns5:Balance>
                <xsl:value-of select="tns:Balance"/>
              </ns5:Balance>
              <ns5:Expired_date__c>
                <xsl:value-of select="tns:ExpireDate"/>
              </ns5:Expired_date__c>
              <ns5:ACBParanetID__c>
                <xsl:value-of select="tns:DlrNum"/>
              </ns5:ACBParanetID__c>
              <ns5:Open_Amount__c>
                <xsl:value-of select="tns:Open"/>
              </ns5:Open_Amount__c>
            </ns6:ACBApproverToSFDCDetails>
          </xsl:for-each>
        </ns6:ACBApproverToSFDC>
      </ns1:DataArea>
    </ns1:ProcessACBApproverToSFDC>
  </xsl:template>
</xsl:stylesheet>