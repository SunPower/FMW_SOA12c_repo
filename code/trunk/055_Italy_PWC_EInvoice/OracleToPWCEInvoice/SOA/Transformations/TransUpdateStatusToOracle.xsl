<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/UpdateOracleApps"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:ns1="http://www.sunpower.com/IT/Middleware/PWC/Einvoice/schema/businessfault"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:ns0="http://ivaservizi.agenziaentrate.gov.it/docs/xsd/fatture/v1.2"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns1 ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/file/SOAAppDemo/OracleToPWCEInvoice/EInvoiceRead"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns3="http://www.w3.org/2000/09/xmldsig#" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns4="http://xmlns.oracle.com/pcbpel/adapter/db/SPWRSOAApp/OracleToPWCEInvoice/UpdateOracleApps"
                xmlns:ns6="http://schemas.oracle.com/bpel/extension" xmlns:ns5="http://www.params.oracletopwcEinv.org"
                xmlns:ns7="http://www.sunpower.com/IT/Middleware/PWC/Einvoice/nxsdschema">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/EInvoiceRead.wsdl"/>
        <oracle-xsl-mapper:rootElement name="FatturaElettronica"
                                       namespace="http://ivaservizi.agenziaentrate.gov.it/docs/xsd/fatture/v1.2"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../Schemas/BusinessFaultsSchema.xsd"/>
        <oracle-xsl-mapper:rootElement name="BusinessFault"
                                       namespace="http://www.sunpower.com/IT/Middleware/PWC/Einvoice/schema/businessfault"/>
        <oracle-xsl-mapper:param name="BusinessFaultVar"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/UpdateOracleApps.wsdl"/>
        <oracle-xsl-mapper:rootElement name="UpdateOracleAppsInput"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/UpdateOracleApps"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [WED MAY 01 09:26:52 IST 2019].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="BusinessFaultVar"/>
  <xsl:template match="/">
    <tns:UpdateOracleAppsInput>
      <tns:attribute8>ERROR</tns:attribute8>
      <tns:global_attribute8>
        <xsl:call-template name="tokenizeMessages">
          <xsl:with-param name="errordetail" select="$BusinessFaultVar/ns1:BusinessFault/ns1:detail"/>	
          <xsl:with-param name="separator">cvc-type.3.1.3: </xsl:with-param>
          <xsl:with-param name="escapeChars">",</xsl:with-param>
        </xsl:call-template>
      </tns:global_attribute8>
      <tns:operating_units_name>
        <xsl:value-of select="/ns0:FatturaElettronica/FatturaElettronicaHeader/CedentePrestatore/DatiAnagrafici/Anagrafica/Denominazione"/>
      </tns:operating_units_name>
      <tns:trx_number>
        <xsl:value-of select="/ns0:FatturaElettronica/FatturaElettronicaBody/DatiGenerali/DatiGeneraliDocumento/Numero"/>
      </tns:trx_number>
      <tns:trx_date>
        <xsl:value-of select="/ns0:FatturaElettronica/FatturaElettronicaBody/DatiGenerali/DatiGeneraliDocumento/Data"/>
      </tns:trx_date>
      <tns:party_name>
        <xsl:value-of select="/ns0:FatturaElettronica/FatturaElettronicaHeader/CessionarioCommittente/DatiAnagrafici/Anagrafica/Denominazione"/>
      </tns:party_name>
    </tns:UpdateOracleAppsInput>
  </xsl:template>
  <xsl:template name="tokenizeMessages">    
    <xsl:param name="errordetail"/>  
    <xsl:param name="separator"/> 
    <xsl:param name="escapeChars"/>
<xsl:if test="contains($errordetail,$separator)">       
          <xsl:value-of select="translate(substring-before(substring-after($errordetail,$separator),'objectName'),$escapeChars,'')"/>
<xsl:if test="contains(substring-after($errordetail,$separator),$separator)">
<xsl:call-template name="tokenizeMessages">
<xsl:with-param name="errordetail" select="(substring-after($errordetail,$separator))"/>
<xsl:with-param name="separator">cvc-type.3.1.3: </xsl:with-param>
<xsl:with-param name="escapeChars">",</xsl:with-param>
</xsl:call-template>
          </xsl:if>        
      </xsl:if>
  </xsl:template>
</xsl:stylesheet>
