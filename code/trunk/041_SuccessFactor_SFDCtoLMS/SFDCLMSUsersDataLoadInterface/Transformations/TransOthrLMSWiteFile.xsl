<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:ns6="http://TargetNamespace.com/SFDCLMSFlatFile" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns9="http://www.sunpowercorp.com/MergeLmsRows" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns10="http://www.sunpowercorp.com/SunPowerDevelopment/DealerPartnerCreditINFO/EnqueSyncCreditHoldLimit/initParams/xsd/v1" xmlns:ns7="http://xmlns.oracle.com/testingapplication/CommonSFDCErrorLogService/CallCommSFDCErrMediator" xmlns:ns3="http://www.sunpowercorp.com/PlateauHRConectorFFData" xmlns:ns1="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns4="http://www.sunpowercorp.com/PlateauHRConectorFFAccountData" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:client="http://www.sunpowercorp.com/UserFeedOracleSFDCToLMS/SFDCLMSUsersDataLoadInterface/SFDCLMSUsersDataLoadInterface_BPEL" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns5="http://www.sunpowercorp.com/MergedRows" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns8="http://schemas.oracle.com/bpel/extension" xmlns:ns2="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl plnk ns6 wsdl ns9 ns10 ns7 ns3 ns1 ns4 client ns5 xsd ns8 ns2 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/SFDCLMSUsersDataLoadInterface_BPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="MergeLmsRowsCollection" namespace="http://www.sunpowercorp.com/MergeLmsRows"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/SFDCLMSUsersDataLoadInterface_BPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="SFDCLMSFlatFileCollection" namespace="http://TargetNamespace.com/SFDCLMSFlatFile"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [SAT OCT 08 16:55:14 IST 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <ns6:SFDCLMSFlatFileCollection>
      <xsl:for-each select="/ns9:MergeLmsRowsCollection/ns9:MergeLmsRowsItems">
        <ns6:SFDCLMSFlatFileItems>
          <ns6:NOTACTIVE>
            <xsl:value-of select="ns9:not_active"/>
          </ns6:NOTACTIVE>
          <ns6:STUD_ID>
            <xsl:value-of select="ns9:user_id"/>
          </ns6:STUD_ID>
          <ns6:FNAME>
            <xsl:value-of select="ns9:first_name"/>
          </ns6:FNAME>
          <ns6:LNAME>
            <xsl:value-of select="ns9:last_name"/>
          </ns6:LNAME>
          <ns6:JP_ID>
            <xsl:value-of select="ns9:job_position_id"/>
          </ns6:JP_ID>
          <ns6:JP_DESC>
            <xsl:value-of select="ns9:job_position_description"/>
          </ns6:JP_DESC>
          <ns6:ROLE_ID>
            <xsl:value-of select="ns9:role"/>
          </ns6:ROLE_ID>
          <ns6:DMN_ID>
            <xsl:value-of select="ns9:domain_id"/>
          </ns6:DMN_ID>
          <xsl:choose>
            <xsl:when test="ns9:domain_id = &quot;VAR-NA&quot;">
              <ns6:DMN_DESC>
                <xsl:text disable-output-escaping="no">RLC-North America</xsl:text>
              </ns6:DMN_DESC>
            </xsl:when>
            <xsl:otherwise>
              <ns6:DMN_DESC>
                <xsl:text disable-output-escaping="no"/>
              </ns6:DMN_DESC>
            </xsl:otherwise>
          </xsl:choose>
          <ns6:ORG_ID>
            <xsl:value-of select="ns9:organization_id"/>
          </ns6:ORG_ID>
          <ns6:ORG_DESC>
            <xsl:value-of select="ns9:organization_description"/>
          </ns6:ORG_DESC>
          <ns6:STATE>
            <xsl:value-of select="ns9:state"/>
          </ns6:STATE>
          <ns6:CNTRY>
            <xsl:value-of select="ns9:country"/>
          </ns6:CNTRY>
          <ns6:REGION_ID>
            <xsl:value-of select="ns9:region_id"/>
          </ns6:REGION_ID>
          <ns6:EMAIL_ADDR>
            <xsl:value-of select="ns9:email_address"/>
          </ns6:EMAIL_ADDR>
          <ns6:SUPER>
            <xsl:value-of select="ns9:supervisor"/>
          </ns6:SUPER>
          <xsl:choose>
                  <xsl:when test="ns9:custom_column_120 = &quot;B&quot; or ns9:custom_column_120 = &quot;TL&quot; or ns9:custom_column_120 = &quot;O&quot; ">
                     <ns6:ACCT_ID>
                        <xsl:value-of select="ns9:account_code"/>
                     </ns6:ACCT_ID>
                  </xsl:when>
                  <xsl:otherwise>
                     <ns6:ACCT_ID>
                        <xsl:text disable-output-escaping="no">NONE</xsl:text>
                     </ns6:ACCT_ID>
                  </xsl:otherwise>
               </xsl:choose>         
          <ns6:PHON_NUM1>
            <xsl:value-of select="ns9:phone_number_i"/>
          </ns6:PHON_NUM1>
          <ns6:PHON_NUM1_DESC>
            <xsl:value-of select="ns9:phone_number_description_i"/>
          </ns6:PHON_NUM1_DESC>
          <ns6:PHON_NUM2>
            <xsl:value-of select="ns9:phone_number_ii"/>
          </ns6:PHON_NUM2>
          <ns6:PHON_NUM2_DESC>
            <xsl:value-of select="ns9:phone_number_description_ii"/>
          </ns6:PHON_NUM2_DESC>
          <ns6:PHON_NUM3>
            <xsl:value-of select="ns9:phone_number_iii"/>
          </ns6:PHON_NUM3>
          <ns6:PHON_NUM3_DESC>
            <xsl:value-of select="ns9:phone_number_description_iii"/>
          </ns6:PHON_NUM3_DESC>
          <ns6:SHOPPING_ACCT_TYPE>
            <xsl:value-of select="ns9:shopping_account_type"/>
          </ns6:SHOPPING_ACCT_TYPE>
          <xsl:choose>
                  <xsl:when test="ns9:not_active = 'N' ">
                     <ns6:ENABLE_SHOPPING_ACCT>
                        <xsl:text disable-output-escaping="no">Y</xsl:text>
                     </ns6:ENABLE_SHOPPING_ACCT>
                  </xsl:when>
                  <xsl:otherwise>
                     <ns6:ENABLE_SHOPPING_ACCT>
                        <xsl:text disable-output-escaping="no">N</xsl:text>
                     </ns6:ENABLE_SHOPPING_ACCT>
                  </xsl:otherwise>
               </xsl:choose>
          <ns6:COL_NUM1_VAL>
            <xsl:value-of select="ns9:custom_column_100"/>
          </ns6:COL_NUM1_VAL>
          <ns6:COL_NUM2_VAL>
            <xsl:value-of select="ns9:custom_column_110"/>
          </ns6:COL_NUM2_VAL>
          <ns6:COL_NUM3_VAL>
            <xsl:value-of select="ns9:custom_column_120"/>
          </ns6:COL_NUM3_VAL>
          <ns6:TIMEZONE>
            <xsl:value-of select="ns9:timezone"/>
          </ns6:TIMEZONE>
          <ns6:LOCALE>
            <xsl:value-of select="ns9:language_id"/>
          </ns6:LOCALE>
          <xsl:choose>
            <xsl:when test="ns9:custom_column_120 = &quot;B&quot; or ns9:custom_column_120 = &quot;TL&quot; or ns9:custom_column_120 = &quot;O&quot; ">
              <ns6:CAN_USE_ORG_ACT>
                <xsl:text disable-output-escaping="no">Y</xsl:text>
              </ns6:CAN_USE_ORG_ACT>
            </xsl:when>
            <xsl:otherwise>
              <ns6:CAN_USE_ORG_ACT>
                <xsl:text disable-output-escaping="no">N</xsl:text>
              </ns6:CAN_USE_ORG_ACT>
            </xsl:otherwise>
          </xsl:choose>
         <xsl:choose>
            <xsl:when test="ns9:domain_id = &quot;VAR-NA&quot;">
              <ns6:CURRENCY_CODE>
                <xsl:text disable-output-escaping="no">USD</xsl:text>
              </ns6:CURRENCY_CODE>
            </xsl:when>
            <xsl:otherwise>
              <ns6:CURRENCY_CODE>
                <xsl:text disable-output-escaping="no"/>
              </ns6:CURRENCY_CODE>
            </xsl:otherwise>
          </xsl:choose>
        </ns6:SFDCLMSFlatFileItems>
      </xsl:for-each>
    </ns6:SFDCLMSFlatFileCollection>
  </xsl:template>
</xsl:stylesheet>