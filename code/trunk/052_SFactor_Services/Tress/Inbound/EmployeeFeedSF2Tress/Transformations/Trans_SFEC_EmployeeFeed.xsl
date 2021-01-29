<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/SFEC/EmployeeFeedSF2Tress/EmployeeFeed_TressDB" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns1="http://www.sunpowercorp.com/SunPowerDevelopment/initParams/xsd/v1" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/file/SFEC/EmployeeFeedSF2Tress/ReadSFEC_EmployeeFeed" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/EmployeeFeed_TressDB" xmlns:imp1="http://TargetNamespace.com/ReadSFEC_EmployeeFeed" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl pc plt wsdl tns imp1 jca xsd ns0 top xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/ReadSFEC_EmployeeFeed.wsdl"/>
            <oracle-xsl-mapper:rootElement name="SFECFeeds" namespace="http://TargetNamespace.com/ReadSFEC_EmployeeFeed"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/EmployeeFeed_TressDB.wsdl"/>
            <oracle-xsl-mapper:rootElement name="HireCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/EmployeeFeed_TressDB"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [THU OCT 06 22:14:14 IST 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <top:HireCollection>
      <xsl:for-each select="/imp1:SFECFeeds/imp1:EmployeeData">
        <top:Hire>
          <top:names>
            <xsl:value-of select="imp1:FIRST_NAME"/>
          </top:names>
          <top:lastname>
            <xsl:value-of select="imp1:LAST_NAME"/>
          </top:lastname>
          <top:secondlastname>
            <xsl:value-of select="imp1:MIDDLE_NAME"/>
          </top:secondlastname>
          <top:birthdate>
            <xsl:value-of select="imp1:DOB"/>
          </top:birthdate>
          <top:gender>
            <xsl:value-of select="imp1:GENDER"/>
          </top:gender>
          <top:ssno>
            <xsl:value-of select="imp1:SSN"/>
          </top:ssno>
          <top:maritalstatus>
            <xsl:value-of select="imp1:MARITIAL_STATUS"/>
          </top:maritalstatus>
          <top:curp>
            <xsl:value-of select="imp1:CURP"/>
          </top:curp>
          <top:rfc>
            <xsl:value-of select="imp1:RFC"/>
          </top:rfc>
          <top:dailysalary>
            <xsl:value-of select="imp1:DAILY_WAGES"/>
          </top:dailysalary>
          <top:street>
            <xsl:value-of select="imp1:HOUSE_STREET"/>
          </top:street>
          <top:city>
            <xsl:value-of select="imp1:TOWN_OR_CITY"/>
          </top:city>
          <top:province>
            <xsl:value-of select="imp1:PROVINCE"/>
          </top:province>
          <top:state>
            <xsl:value-of select="imp1:STATE"/>
          </top:state>
          <top:postalcode>
            <xsl:value-of select="imp1:POSTAL_CODE"/>
          </top:postalcode>
          <top:country>
            <xsl:value-of select="imp1:COUNTRY"/>
          </top:country>
          <top:contactphonenumber>
            <xsl:value-of select="imp1:PHONE"/>
          </top:contactphonenumber>
          <top:addtext1>
            <xsl:value-of select="imp1:ADDL_TEXT1_CE_NAME"/>
          </top:addtext1>
          <top:addtext2>
            <xsl:value-of select="imp1:ADDL_TEXT2_CE_FATHER_NAME"/>
          </top:addtext2>
          <top:addtext3>
            <xsl:value-of select="imp1:ADDL_TEXT3_CE_MOTHER_NAME"/>
          </top:addtext3>
          <top:addtext4>
            <xsl:value-of select="imp1:ADDL_TEXT4_CE_GENDER"/>
          </top:addtext4>
          <top:addtext5>
            <xsl:value-of select="imp1:ADDL_TEXT5"/>
          </top:addtext5>
          <top:addtext6>
            <xsl:value-of select="imp1:ADDL_TEXT6"/>
          </top:addtext6>
          <top:addtext7>
            <xsl:value-of select="imp1:ADDL_TEXT7"/>
          </top:addtext7>
          <top:addtext8>
            <xsl:value-of select="imp1:ADDL_TEXT8"/>
          </top:addtext8>
          <top:addtext9>
            <xsl:value-of select="imp1:ADDL_TEXT9"/>
          </top:addtext9>
          <top:addtext10>
            <xsl:value-of select="imp1:ADDL_TEXT10"/>
          </top:addtext10>
          <top:addtext11>
            <xsl:value-of select="imp1:ADDL_TEXT11"/>
          </top:addtext11>
          <top:addtext14>
            <xsl:value-of select="imp1:ADDL_TEXT14"/>
          </top:addtext14>
          <top:adddate1>
            <xsl:value-of select="imp1:ADDL_DATE1"/>
          </top:adddate1>
          <top:adddate2>
            <xsl:value-of select="imp1:ADDL_DATE2"/>
          </top:adddate2>
          <top:adddate3>
            <xsl:value-of select="imp1:ADDL_DATE3"/>
          </top:adddate3>
          <top:employer>
            <xsl:value-of select="imp1:EMPLOYER_NAME"/>
          </top:employer>
          <top:position>
            <xsl:value-of select="imp1:POSITION"/>
          </top:position>
          <top:stardate>
            <xsl:value-of select="imp1:PE_START_DATE"/>
          </top:stardate>
          <top:enddate>
            <xsl:value-of select="imp1:PE_END_DATE"/>
          </top:enddate>
          <top:hiredate>
            <xsl:value-of select="imp1:DATE_OF_HIRING"/>
          </top:hiredate>
		  <top:jobcode>
			<xsl:value-of select="normalize-space(imp1:JOB_POSITION_CODE)"/>
          </top:jobcode>
          <!--xsl:choose>
            <xsl:when test="string-length(normalize-space(imp1:JOB_POSITION_CODE)) > 6">
              <top:jobcode>
                <xsl:value-of select="substring(normalize-space(imp1:JOB_POSITION_CODE),3,6)"/>
              </top:jobcode>
            </xsl:when>
            <xsl:otherwise>
              <top:jobcode>
                <xsl:value-of select="imp1:JOB_POSITION_CODE"/>
              </top:jobcode>
            </xsl:otherwise>
          </xsl:choose-->
          <top:level1>
            <xsl:value-of select="imp1:LEVEL1_DEPTNO"/>
          </top:level1>
          <top:level2>
            <xsl:value-of select="imp1:LEVEL2_SUPERVISOR"/>
          </top:level2>
          <top:level5>
            <xsl:value-of select="imp1:LEVEL5_TLHS"/>
          </top:level5>
          <top:employeeid>
            <xsl:value-of select="imp1:EMPLOYEE_NUMBER"/>
          </top:employeeid>
          <top:terminateddate>
            <xsl:value-of select="imp1:TERMINATION_DATE"/>
          </top:terminateddate>
          <top:terminatedreason>
            <xsl:value-of select="imp1:TERM_REASON"/>
          </top:terminatedreason>
          <top:modifieddate>
            <xsl:value-of select="xp20:format-dateTime(xp20:current-dateTime(),&quot;[Y0001]-[M01]-[D01]T[H01]:[m01]:[s01]&quot;)"/>
          </top:modifieddate>
          <top:userid>
            <xsl:text disable-output-escaping="no">99</xsl:text>
          </top:userid>
          <top:jobdescription>
            <xsl:value-of select="imp1:JOBDESCRIPTION"/>
          </top:jobdescription>
          <top:supervisorname>
            <xsl:value-of select="imp1:SUPERVISORNAME"/>
          </top:supervisorname>
          <top:salarydate>
            <xsl:value-of select="imp1:SALARY_EFFECTIVE_DATE"/>
          </top:salarydate>
          <top:levelsdate>
            <xsl:value-of select="imp1:ASS_EFFECTIVE_DATE"/>
          </top:levelsdate>
          <top:location>
            <xsl:value-of select="imp1:LOCATION"/>
          </top:location>
        </top:Hire>
      </xsl:for-each>
    </top:HireCollection>
  </xsl:template>
</xsl:stylesheet>