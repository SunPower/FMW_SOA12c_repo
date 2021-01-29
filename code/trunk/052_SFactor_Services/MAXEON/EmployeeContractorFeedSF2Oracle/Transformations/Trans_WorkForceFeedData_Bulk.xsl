<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/XXSPWR_SF_EMP_FEED_DB" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:opaque="http://xmlns.oracle.com/pcbpel/adapter/opaque/" xmlns:imp1="http://TargetNamespace.com/InboundService" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns1="http://www.sunpowercorp.com/SunPowerDevelopment/initParams/xsd/v1" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/file/SFEC/EmployeeContractorFeedSF2Oracle/Chunk_WORKFORCE_FEED_File" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/SFEC/EmployeeContractorFeedSF2Oracle/XXSPWR_SF_EMP_FEED_DB" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/file/SFEC/EmployeeContractorFeedSF2Oracle/Poll_WORKFORCE_FEED_File" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl pc plt opaque imp1 wsdl ns1 tns jca ns0 xsd top ns2 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/Chunk_WORKFORCE_FEED_File.wsdl"/>
            <oracle-xsl-mapper:rootElement name="WorkForceFeeds" namespace="http://TargetNamespace.com/InboundService"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/Poll_WORKFORCE_FEED_File.wsdl"/>
            <oracle-xsl-mapper:rootElement name="Params" namespace="http://www.sunpowercorp.com/SunPowerDevelopment/initParams/xsd/v1"/>
            <oracle-xsl-mapper:param name="Params"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/XXSPWR_SF_EMP_FEED_DB.wsdl"/>
            <oracle-xsl-mapper:rootElement name="XxspwrSfEmpFeedCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/XXSPWR_SF_EMP_FEED_DB"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <oracle-xsl-mapper:named-template-schema>
         <oracle-xsl-mapper:template name="GetDate">
            <oracle-xsl-mapper:mapSources/>
         </oracle-xsl-mapper:template>
      </oracle-xsl-mapper:named-template-schema>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [THU OCT 06 21:34:50 IST 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="Params"/>
  <xsl:template match="/">
    <top:XxspwrSfEmpFeedCollection>
      <xsl:for-each select="/imp1:WorkForceFeeds/imp1:WorkForceFeed">
        <top:XxspwrSfEmpFeed>
          <top:sfEmployeeNumber>
            <xsl:value-of select="imp1:SF_EMPLOYEE_NUMBER"/>
          </top:sfEmployeeNumber>
          <top:oracleEmployeeNumber>
            <xsl:value-of select="imp1:EMPLOYEE_NEW_NUMBER"/>
          </top:oracleEmployeeNumber>
          <top:oraclePersonId>
            <xsl:value-of select="imp1:ORACLE_PERSON_ID"/>
          </top:oraclePersonId>
          <xsl:if test="imp1:PERSON_EFFECTIVE_DATE != &quot;&quot;">
            <top:personEffectiveDate>
              <xsl:call-template name="GetDate">
                <xsl:with-param name="date" select="imp1:PERSON_EFFECTIVE_DATE"/>
              </xsl:call-template>
            </top:personEffectiveDate>
          </xsl:if>
          <top:lastName>
            <xsl:value-of select="imp1:LAST_NAME"/>
          </top:lastName>
          <top:firstName>
            <xsl:value-of select="imp1:FIRST_NAME"/>
          </top:firstName>
          <top:middleName>
            <xsl:value-of select="imp1:MIDDLE_NAME"/>
          </top:middleName>
          <top:preferredName>
            <xsl:value-of select="imp1:PREFERRED_NAME"/>
          </top:preferredName>
          <top:gender>
            <xsl:value-of select="imp1:GENDER"/>
          </top:gender>
          <top:nationality>
            <xsl:value-of select="imp1:NATIONALITY"/>
          </top:nationality>
          <xsl:if test="imp1:DATE_OF_BIRTH != &quot;&quot;">
            <top:dateOfBirth>
              <xsl:call-template name="GetDate">
                <xsl:with-param name="date" select="imp1:DATE_OF_BIRTH"/>
              </xsl:call-template>
            </top:dateOfBirth>
          </xsl:if>
          <xsl:if test="imp1:HIRE_DATE != &quot;&quot;">
            <top:hireDate>
              <xsl:call-template name="GetDate">
                <xsl:with-param name="date" select="imp1:HIRE_DATE"/>
              </xsl:call-template>
            </top:hireDate>
          </xsl:if>
          <xsl:if test="imp1:TERMINATION_DATE != &quot;&quot;">
            <top:termDate>
              <xsl:call-template name="GetDate">
                <xsl:with-param name="date" select="imp1:TERMINATION_DATE"/>
              </xsl:call-template>
            </top:termDate>
          </xsl:if>
          <top:termReasonCode>
            <xsl:value-of select="imp1:TERM_REASON"/>
          </top:termReasonCode>
          <top:emailAddress>
            <xsl:value-of select="imp1:EMAIL"/>
          </top:emailAddress>
          <xsl:if test="imp1:ADDRESS_EFFECTIVE_DATE != &quot;&quot;">
            <top:addressEffectiveDate>
              <xsl:call-template name="GetDate">
                <xsl:with-param name="date" select="imp1:ADDRESS_EFFECTIVE_DATE"/>
              </xsl:call-template>
            </top:addressEffectiveDate>
          </xsl:if>
          <top:country>
            <xsl:value-of select="imp1:HOME_COUNTRY_CODE"/>
          </top:country>
          <top:addressLine1>
            <xsl:value-of select="imp1:HOME_ADDRESS_LINE1"/>
          </top:addressLine1>
          <top:addressLine2>
            <xsl:value-of select="imp1:HOME_ADDRESS_LINE2"/>
          </top:addressLine2>
          <top:addressLine3>
            <xsl:value-of select="imp1:HOME_ADDRESS_LINE3"/>
          </top:addressLine3>
          <top:townOrCity>
            <xsl:value-of select="imp1:HOME_TOWN_OR_CITY"/>
          </top:townOrCity>
          <top:stateOrProvince>
            <xsl:value-of select="imp1:HOME_STATE"/>
          </top:stateOrProvince>
          <top:postalCode>
            <xsl:value-of select="imp1:HOME_ZIP_CODE"/>
          </top:postalCode>
          <xsl:if test="imp1:JOB_EFFECTIVE_DATE != &quot;&quot;">
            <top:jobEffectiveDate>
              <xsl:call-template name="GetDate">
                <xsl:with-param name="date" select="imp1:JOB_EFFECTIVE_DATE"/>
              </xsl:call-template>
            </top:jobEffectiveDate>
          </xsl:if>
          <top:employeeStatus>
            <xsl:value-of select="imp1:EMPLOYEE_STATUS"/>
          </top:employeeStatus>
          <top:employeeClass>
            <xsl:value-of select="imp1:EMPLOYEE_CLASS"/>
          </top:employeeClass>
          <top:workLocationCode>
            <xsl:value-of select="imp1:LOCATION_CODE"/>
          </top:workLocationCode>
          <top:jobCode>
            <xsl:value-of select="imp1:JOB_CODE"/>
          </top:jobCode>
          <top:businessTitle>
            <xsl:value-of select="imp1:BUSINESS_TITLE"/>
          </top:businessTitle>
          <top:managerId>
            <xsl:value-of select="imp1:SUPERVISOR_NUMBER"/>
          </top:managerId>
          <top:oraclePayrollId>
            <xsl:value-of select="imp1:ORACLE_PAYROLL_ID"/>
          </top:oraclePayrollId>
          <top:oracleLeId>
            <xsl:value-of select="imp1:ORACLE_LE_ID"/>
          </top:oracleLeId>
          <top:oracleLedgerId>
            <xsl:value-of select="imp1:ORACLE_LEDGER_ID"/>
          </top:oracleLedgerId>
          <top:oraclePayBasisId>
            <xsl:value-of select="imp1:ORACLE_PAY_BASIS_ID"/>
          </top:oraclePayBasisId>
          <top:company>
            <xsl:value-of select="imp1:COMPANY_CODE"/>
          </top:company>
          <top:department>
            <xsl:value-of select="imp1:EXPENSE_DEPARTMENT_CODE"/>
          </top:department>
          <top:future>
            <xsl:value-of select="imp1:FUTURE"/>
          </top:future>
          <top:channel>
            <xsl:value-of select="imp1:CHANNEL"/>
          </top:channel>
          <top:account>
            <xsl:value-of select="imp1:ACCOUNT"/>
          </top:account>
          <top:line>
            <xsl:value-of select="imp1:LINE"/>
          </top:line>
          <top:project>
            <xsl:value-of select="imp1:PROJECT"/>
          </top:project>
          <top:intercompany>
            <xsl:value-of select="imp1:INTER_COMPANY"/>
          </top:intercompany>
          <xsl:if test="imp1:SALARY_EFFECTIVE_DATE != &quot;&quot;">
            <top:salaryEffectiveDate>
              <xsl:call-template name="GetDate">
                <xsl:with-param name="date" select="imp1:SALARY_EFFECTIVE_DATE"/>
              </xsl:call-template>
            </top:salaryEffectiveDate>
          </xsl:if>
          <top:salaryAmount>
            <xsl:value-of select="imp1:ANNUAL_FTE_SAL_IN_LOCAL_CUR"/>
          </top:salaryAmount>
          <top:salaryCurrencyCode>
            <xsl:value-of select="imp1:LOCAL_CURRENCY_CODE"/>
          </top:salaryCurrencyCode>
          <xsl:if test="imp1:RATE_EFFECTIVE_DATE != &quot;&quot;">
            <top:rateEffectiveDate>
              <xsl:call-template name="GetDate">
                <xsl:with-param name="date" select="imp1:RATE_EFFECTIVE_DATE"/>
              </xsl:call-template>
            </top:rateEffectiveDate>
          </xsl:if>
          <top:rateBasis>
            <xsl:value-of select="imp1:RATE_BASIS"/>
          </top:rateBasis>
          <top:payRate>
            <xsl:value-of select="imp1:PAY_RATE"/>
          </top:payRate>
          <top:billRate>
            <xsl:value-of select="imp1:BILL_RATE"/>
          </top:billRate>
          <top:overtimeRate>
            <xsl:value-of select="imp1:OVERTIME_RATE"/>
          </top:overtimeRate>
          <top:doubleTimeRate>
            <xsl:value-of select="imp1:DOUBLETIME_RATE"/>
          </top:doubleTimeRate>
          <top:currency>
            <xsl:value-of select="imp1:RATE_CURRENCY_CODE"/>
          </top:currency>
          <top:vendor>
            <xsl:value-of select="imp1:VENDOR_ON_RATE_TABLE"/>
          </top:vendor>
          <xsl:if test="imp1:PROJECTED_ASSIGNMENT_END_DATE != &quot;&quot;">
            <top:projectedAssEndDate>
              <xsl:call-template name="GetDate">
                <xsl:with-param name="date" select="imp1:PROJECTED_ASSIGNMENT_END_DATE"/>
              </xsl:call-template>
            </top:projectedAssEndDate>
          </xsl:if>
          <top:fileName>
            <xsl:value-of select="$Params/ns1:Params/ns1:FileName"/>
          </top:fileName>
          <top:creationDate>
            <xsl:value-of select="xp20:current-dateTime()"/>
          </top:creationDate>
          <top:createdBy>
            <xsl:text disable-output-escaping="no">-99</xsl:text>
          </top:createdBy>
          <top:lastUpdateDate>
            <xsl:value-of select="xp20:current-dateTime()"/>
          </top:lastUpdateDate>
          <top:lastUpdatedBy>
            <xsl:text disable-output-escaping="no">-99</xsl:text>
          </top:lastUpdatedBy>
        </top:XxspwrSfEmpFeed>
      </xsl:for-each>
    </top:XxspwrSfEmpFeedCollection>
  </xsl:template>
  <!--  User Defined Templates  -->
  <xsl:template name="GetDate">
    <xsl:param name="date"/>
    <xsl:choose>
      <xsl:when test="string-length($date)=7">
        <xsl:variable name="month" select="substring-before($date, '/')"/>
        <xsl:variable name="year" select="substring-after($date, '/')"/>
        <xsl:value-of select="concat($year,'-',$month,'-01')"/>
      </xsl:when>
      <xsl:when test="string-length($date)&lt;7">
        <xsl:variable name="month" select="substring-before($date, '/')"/>
        <xsl:variable name="year" select="substring-after($date, '/')"/>
        <xsl:value-of select="concat($year,'-','0',$month,'-01')"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="month" select="substring-before($date, '/')"/>
        <xsl:variable name="tmp" select="substring-after($date, '/')"/>
        <xsl:variable name="day" select="substring-before($tmp, '/')"/>
        <xsl:variable name="year" select="substring-after($tmp, '/')"/>
        <xsl:choose>
          <xsl:when test="number($month)&lt;9 and string-length($month)&lt;2 ">
            <xsl:value-of select="concat($year,'-','0',$month,'-')"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="concat($year,'-',$month,'-')"/>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:choose>
          <xsl:when test="number($day)&lt;9 and string-length($day)&lt;2">
            <xsl:value-of select="concat('0',$day)"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="$day"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>