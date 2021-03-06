<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns7="http://www.sunpowercorp.com/Common/WarrantyOracleToSFDCCommonTypes/V1" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:ns2="http://www.sunpowercorp.com/BOD/ProcessWarrantyOracleToSFDC/V1" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns3="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns5="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessWarratyFDS2SFDC/V1" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns6="http://www.sunpowercorp.com/Noun/WarrantyOracleToSFDC/V1" xmlns:ns8="http://schemas.oracle.com/bpel/extension" xmlns:client="http://www.sunpowercorp.com/WarrantyRegistrationOracleToSFDC/WarrantyORACLEToSFDCProv/WarrantyORACLEToSFDCProv_BPEL" xmlns:ns4="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns7 ns0 plnk ns2 wsdl ns3 ns5 ns1 xsd ns6 ns8 client ns4 soap ens fns xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WarrantyORACLEToSFDCProv_BPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ProcessWarrantyOracleToSFDC" namespace="http://www.sunpowercorp.com/BOD/ProcessWarrantyOracleToSFDC/V1"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../partner.wsdl"/>
            <oracle-xsl-mapper:rootElement name="upsert" namespace="urn:partner.soap.sforce.com"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [WED OCT 05 17:45:58 IST 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <ns4:upsert>
      <ns4:externalIDFieldName>
        <xsl:text disable-output-escaping="no">Packing_Slip__c</xsl:text>
      </ns4:externalIDFieldName>
      <xsl:for-each select="/ns2:ProcessWarrantyOracleToSFDC/ns2:DataArea/ns6:WROracleToSFDC/ns6:WRORACLEToSFDCDetails">
       <xsl:variable name="pos" select="position()"/>
        <ns4:sObjects>
          <ens:type>
            <xsl:text disable-output-escaping="no">WR_ORACLE_SalesOrder__c</xsl:text>
          </ens:type>
          <ens:Oracle_Account_Number__c>
            <xsl:value-of select="/ns2:ProcessWarrantyOracleToSFDC/ns2:DataArea/ns6:WROracleToSFDC/ns6:WRORACLEToSFDCDetails[$pos]/ns7:Customer_Number"/>
          </ens:Oracle_Account_Number__c>
          <xsl:choose>
            <xsl:when test="xp20:lower-case(/ns2:ProcessWarrantyOracleToSFDC/ns2:DataArea/ns6:WROracleToSFDC/ns6:WRORACLEToSFDCDetails[$pos]/ns7:Theater) = &quot;europe&quot;">
              <ens:Packing_Slip__c>
                <xsl:value-of select="/ns2:ProcessWarrantyOracleToSFDC/ns2:DataArea/ns6:WROracleToSFDC/ns6:WRORACLEToSFDCDetails[$pos]/ns7:Delivery_No"/>
              </ens:Packing_Slip__c>
            </xsl:when>
            <xsl:otherwise>
              <ens:Packing_Slip__c>
                <xsl:value-of select="/ns2:ProcessWarrantyOracleToSFDC/ns2:DataArea/ns6:WROracleToSFDC/ns6:WRORACLEToSFDCDetails[$pos]/ns7:Packing_SLIP"/>
              </ens:Packing_Slip__c>
            </xsl:otherwise>
          </xsl:choose>
          <ens:Dealer_Name__c>
            <xsl:value-of select="/ns2:ProcessWarrantyOracleToSFDC/ns2:DataArea/ns6:WROracleToSFDC/ns6:WRORACLEToSFDCDetails[$pos]/ns7:CUSTOMER_NAME"/>
          </ens:Dealer_Name__c>
          <ens:Sales_Order__c>
            <xsl:value-of select="/ns2:ProcessWarrantyOracleToSFDC/ns2:DataArea/ns6:WROracleToSFDC/ns6:WRORACLEToSFDCDetails[$pos]/ns7:SALES_ORDER"/>
          </ens:Sales_Order__c>
          <ens:Purchase_Order__c>
            <xsl:value-of select="/ns2:ProcessWarrantyOracleToSFDC/ns2:DataArea/ns6:WROracleToSFDC/ns6:WRORACLEToSFDCDetails[$pos]/ns7:PURCHASE_ORDER"/>
          </ens:Purchase_Order__c>
          <ens:Quantity_Orderd__c>
            <xsl:value-of select="/ns2:ProcessWarrantyOracleToSFDC/ns2:DataArea/ns6:WROracleToSFDC/ns6:WRORACLEToSFDCDetails[$pos]/ns7:Quantity_Ordered"/>
          </ens:Quantity_Orderd__c>
          <ens:So_Created__c>
            <xsl:value-of select="/ns2:ProcessWarrantyOracleToSFDC/ns2:DataArea/ns6:WROracleToSFDC/ns6:WRORACLEToSFDCDetails[$pos]/ns7:ORDER_CREATION_DATE"/>
          </ens:So_Created__c>
          <ens:Theater__c>
            <xsl:value-of select="/ns2:ProcessWarrantyOracleToSFDC/ns2:DataArea/ns6:WROracleToSFDC/ns6:WRORACLEToSFDCDetails[$pos]/ns7:Theater"/>
          </ens:Theater__c>
        </ns4:sObjects>
      </xsl:for-each>
    </ns4:upsert>
  </xsl:template>
</xsl:stylesheet>