<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertJobFeedSF2Oracle" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:imp1="http://www.sunpowercorp.com/PollSFJobFeedFile" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/SuccessFactor/JobFeedSF2Oracle/InsertJobFeedSF2Oracle" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns1="http://www.sunpowercorp.com/SunPowerDevelopment/initParams/xsd/v1" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/file/SuccessFactor/JobFeedSF2Oracle/PollSFJobFeedFile" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl pc plt imp1 wsdl ns1 tns jca xsd top ns0 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/PollSFJobFeedFile.wsdl"/>
            <oracle-xsl-mapper:rootElement name="SFJobFeed" namespace="http://www.sunpowercorp.com/PollSFJobFeedFile"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/PollSFJobFeedFile.wsdl"/>
            <oracle-xsl-mapper:rootElement name="InitParams" namespace="http://www.sunpowercorp.com/SunPowerDevelopment/initParams/xsd/v1"/>
            <oracle-xsl-mapper:param name="initParams"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/InsertJobFeedSF2Oracle.wsdl"/>
            <oracle-xsl-mapper:rootElement name="XxspwrSfJobFeedCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertJobFeedSF2Oracle"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <oracle-xsl-mapper:named-template-schema>
         <oracle-xsl-mapper:template name="GetDate">
            <oracle-xsl-mapper:mapSources/>
         </oracle-xsl-mapper:template>
      </oracle-xsl-mapper:named-template-schema>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [THU OCT 06 21:42:36 IST 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="initParams"/>
   <xsl:template match="/">
    <top:XxspwrSfJobFeedCollection>
      <xsl:for-each select="/imp1:SFJobFeed/imp1:JobFeed">
        <top:XxspwrSfJobFeed>
          <top:jobCode>
            <xsl:value-of select="imp1:Job_Code"/>
          </top:jobCode>
          <top:jobTitle>
            <xsl:value-of select="imp1:Job_Title"/>
          </top:jobTitle>
          <!--
          <top:effectiveFrom>
            <xsl:value-of select="imp1:Effective_From"/>
       </top:effectiveFrom>
       -->
       <xsl:if test="imp1:Effective_From != &quot;&quot;">
        <top:effectiveFrom>
       <xsl:value-of select="concat(substring(imp1:Effective_From,7.0,4.0),&quot;-&quot;,substring(imp1:Effective_From,1.0,2.0),&quot;-&quot;,substring(imp1:Effective_From,4.0,2.0))"/>
        </top:effectiveFrom>
        </xsl:if>   
          <top:jobStatus>
            <xsl:value-of select="imp1:Status"/>
          </top:jobStatus>
          <top:approvalLevel>
            <xsl:value-of select="imp1:Approval_Authority_Level"/>
          </top:approvalLevel>
          <top:jobFunction>
            <xsl:value-of select="imp1:Job_Function"/>
          </top:jobFunction>
          <top:jobFamily>
            <xsl:value-of select="imp1:Job_Family"/>
          </top:jobFamily>
          <top:gradeLevel>
            <xsl:value-of select="imp1:Grade_Level"/>
          </top:gradeLevel>
          <top:exemptNonExempt>
            <xsl:value-of select="imp1:Exempt_NonExempt"/>
          </top:exemptNonExempt>
          <top:workCompCode>
            <xsl:value-of select="imp1:Workers_Comp_Code"/>
          </top:workCompCode>
          <top:directLabour>
            <xsl:value-of select="imp1:Direct_Labor_Job"/>
          </top:directLabour>
          <top:fileName>
            <xsl:value-of select="$initParams/ns1:InitParams/ns1:FileName"/>
          </top:fileName>
          <top:status>
            <xsl:text disable-output-escaping="no">NEW</xsl:text>
          </top:status>
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
        </top:XxspwrSfJobFeed>
      </xsl:for-each>
    </top:XxspwrSfJobFeedCollection>
  </xsl:template> <!--  User Defined Templates  --> <xsl:template name="GetDate">
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