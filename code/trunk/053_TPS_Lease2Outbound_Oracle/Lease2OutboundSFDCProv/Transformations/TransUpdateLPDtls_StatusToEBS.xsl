<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:client="http://xmlns.oracle.com/SFDCUtilityService/SFDCUtilityService" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateEBSLeasePaymentDtls" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:tns="http://xmlns.oracle.com/SFDCUtilityService/SFDCUtilityServiceMediator" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/Lease2Outbound/Lease2OutboundSFDCProv/UpdateEBSLeasePaymentDtls" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl client tns plnk xsd wsdl top ns0 bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="http://dev-fusappdca02.sunpowercorp.com:7003/soa-infra/services/default/SFDCUtilityService/SFDCUtilityServiceMediator.wsdl"/>
            <oracle-xsl-mapper:rootElement name="upsert" namespace="http://xmlns.oracle.com/SFDCUtilityService/SFDCUtilityService"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="http://dev-fusappdca02.sunpowercorp.com:7003/soa-infra/services/default/SFDCUtilityService/SFDCUtilityServiceMediator.wsdl"/>
            <oracle-xsl-mapper:rootElement name="upsertResponse" namespace="http://xmlns.oracle.com/SFDCUtilityService/SFDCUtilityService"/>
            <oracle-xsl-mapper:param name="Rcv_SFDCUtilityService.payload"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/UpdateEBSLeasePaymentDtls.wsdl"/>
            <oracle-xsl-mapper:rootElement name="XxspwrOmLeasePaymentDtlsCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateEBSLeasePaymentDtls"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [MON OCT 10 16:52:09 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="Rcv_SFDCUtilityService.payload"/>
  <xsl:template match="/">
      <top:XxspwrOmLeasePaymentDtlsCollection>
         <xsl:for-each select="/client:upsert/client:sObject">
            <top:XxspwrOmLeasePaymentDtls>
               <xsl:variable name="position" select="position()"/>
               <top:lineId>
                  <xsl:value-of select="client:Line_Id__c"/>
               </top:lineId>
               <xsl:choose>
                  <xsl:when test="$Rcv_SFDCUtilityService.payload/client:upsertResponse/client:result[$position]/client:success=&quot;true&quot;">
                     <top:soaStatus>
                        <xsl:text disable-output-escaping="no">SentToSFDC</xsl:text>
                     </top:soaStatus>
                     <top:errorMessage>
                        <xsl:text disable-output-escaping="no">Successfuly Processed</xsl:text>
                     </top:errorMessage>
                     <top:sfdcId>
                        <xsl:value-of select="$Rcv_SFDCUtilityService.payload/client:upsertResponse/client:result[$position]/client:id"/>
                     </top:sfdcId>
                  </xsl:when>
                  <xsl:otherwise>
                     <top:soaStatus>
                        <xsl:text disable-output-escaping="no">ERROR</xsl:text>
                     </top:soaStatus>
                     <top:errorMessage>
                        <xsl:value-of select="$Rcv_SFDCUtilityService.payload/client:upsertResponse/client:result[$position]/client:errors[1.0]/client:message"/>
                     </top:errorMessage>
                  </xsl:otherwise>
               </xsl:choose>
               <top:lastUpdatedBy>
                  <xsl:text disable-output-escaping="no">-99</xsl:text>
               </top:lastUpdatedBy>               
               <top:lastUpdateDate>
                  <xsl:value-of select="xp20:current-dateTime()"/>
               </top:lastUpdateDate>               
            </top:XxspwrOmLeasePaymentDtls>
         </xsl:for-each>
      </top:XxspwrOmLeasePaymentDtlsCollection>
   </xsl:template>
</xsl:stylesheet>