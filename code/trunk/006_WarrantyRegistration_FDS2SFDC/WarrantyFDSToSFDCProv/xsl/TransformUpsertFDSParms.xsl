<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:client="http://www.sunpowercorp.com/WarrantyRegistrationFDSToSFDC/WarrantyFDSToSFDCProv/WarrantyFDSToSFDCProv_BPEL" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns5="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessWarratyFDSToSFDC/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns2="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns6="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ns0="http://www.sunpowercorp.com/Common/WarrantyFDSToSFDCCommonTypes/V1" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns4="http://schemas.oracle.com/bpel/extension" xmlns:ns7="http://www.sunpowercorp.com/Noun/WarrantyFDSToSFDC/V1" xmlns:ns3="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl client ns5 ns1 plnk wsdl ns2 ns6 ns0 xsd ns4 ns7 ns3 soap ens fns xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <ns3:upsert>
         <ns3:externalIDFieldName>
            <xsl:text disable-output-escaping="no">Serial_Number__c</xsl:text>
         </ns3:externalIDFieldName>
         <xsl:for-each select="/ns1:ProcessWarrantyFDSToSFDC/ns1:DataArea/ns7:WRFDS2SFDC/ns7:WRFDSToSFDCDetails">
            <xsl:variable name="pos" select="position()"/>
            <ns3:sObjects>
               <ens:type>
                  <xsl:text disable-output-escaping="no">WR_FDS_Product__c</xsl:text>
               </ens:type>
               <ens:Packing_Slip__c>
                  <xsl:value-of select="/ns1:ProcessWarrantyFDSToSFDC/ns1:DataArea/ns7:WRFDS2SFDC/ns7:WRFDSToSFDCDetails[$pos]/ns0:packing_list_no"/>
               </ens:Packing_Slip__c>
               <ens:Serial_Number__c>
                  <xsl:value-of select="/ns1:ProcessWarrantyFDSToSFDC/ns1:DataArea/ns7:WRFDS2SFDC/ns7:WRFDSToSFDCDetails[$pos]/ns0:serial_number"/>
               </ens:Serial_Number__c>
               <xsl:choose>
                  <xsl:when test="ns0:trad_ship_date=''">
                     <ens:fieldsToNull>PickUpDate__c</ens:fieldsToNull>
                  </xsl:when>
                  <xsl:otherwise>
                     <ens:PickUpDate__c>
                        <xsl:value-of select="substring(ns0:trad_ship_date,0,24)"/>
                     </ens:PickUpDate__c>
                  </xsl:otherwise>
               </xsl:choose>
               <ens:Dealer_Name__c>
                  <xsl:value-of select="/ns1:ProcessWarrantyFDSToSFDC/ns1:DataArea/ns7:WRFDS2SFDC/ns7:WRFDSToSFDCDetails[$pos]/ns0:dealer_name"/>
               </ens:Dealer_Name__c>
               <ens:Product_Type__c>
                  <xsl:value-of select="/ns1:ProcessWarrantyFDSToSFDC/ns1:DataArea/ns7:WRFDS2SFDC/ns7:WRFDSToSFDCDetails[$pos]/ns0:product_group"/>
               </ens:Product_Type__c>
               <ens:Third_PL_Name__c>
                  <xsl:value-of select="/ns1:ProcessWarrantyFDSToSFDC/ns1:DataArea/ns7:WRFDS2SFDC/ns7:WRFDSToSFDCDetails[$pos]/ns0:third_party_logistics_name"/>
               </ens:Third_PL_Name__c>
               <ens:Manufacturer__c>
                  <xsl:value-of select="/ns1:ProcessWarrantyFDSToSFDC/ns1:DataArea/ns7:WRFDS2SFDC/ns7:WRFDSToSFDCDetails[$pos]/ns0:manufacturer"/>
               </ens:Manufacturer__c>
               <ens:Product_Name__c>
                  <xsl:value-of select="/ns1:ProcessWarrantyFDSToSFDC/ns1:DataArea/ns7:WRFDS2SFDC/ns7:WRFDSToSFDCDetails[$pos]/ns0:product_type"/>
               </ens:Product_Name__c>
            </ns3:sObjects>
         </xsl:for-each>
      </ns3:upsert>
   </xsl:template>
</xsl:stylesheet>