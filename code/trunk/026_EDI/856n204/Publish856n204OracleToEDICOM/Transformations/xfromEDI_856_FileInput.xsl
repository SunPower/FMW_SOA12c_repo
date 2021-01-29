<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns0="http://www.sunpowercorp.com/Publish856n204OracleToEDICOM/EDI_204/xsd/v1" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/AQ/EDICom/Publish856n204OracleToEDICOM/DequeEDISignal" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:ns4="http://www.sunpowercorp.com/utilities/indexparams/xsdV1" xmlns:opaque="http://xmlns.oracle.com/pcbpel/adapter/opaque/" xmlns:ns2="http://www.sunpowercorp.com/Publish856n204OracleToEDICOM/EDI/xsd/v1" xmlns:ns1="http://www.sunpowercorp.com/Publish856n204OracleToEDICOM/EDIOutboundFileBunch/xsd/v1" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns3="http://www.sunpowercorp.com/utilities/xsd/OrgAssignments/V1" xmlns:imp1="http://www.sunpowercorp.com/Publish856n204OracleToEDICOM/EDI_856/xsd/v1" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns5="http://xmlns.oracle.com/pcbpel/adapter/file/EDICom/Publish856n204OracleToEDICOM/WriteEDI_856FileToLocal" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 tns pc plt ns4 opaque ns2 ns1 wsdl ns3 jca xsd imp1 ns5 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:ns6="http://schemas.oracle.com/bpel/extension"
                xmlns:FILEAPP="http://xmlns.oracle.com/pcbpel/adapter/file/">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../DequeEDISignal.wsdl"/>
            <oracle-xsl-mapper:rootElement name="EDIOutboundFileBunch" namespace="http://www.sunpowercorp.com/Publish856n204OracleToEDICOM/EDIOutboundFileBunch/xsd/v1"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../DequeEDISignal.wsdl"/>
            <oracle-xsl-mapper:rootElement name="params" namespace="http://www.sunpowercorp.com/utilities/indexparams/xsdV1"/>
            <oracle-xsl-mapper:param name="indexVariable"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WriteEDI_856FileToLocal.wsdl"/>
            <oracle-xsl-mapper:rootElement name="OrderDetails" namespace="http://www.sunpowercorp.com/Publish856n204OracleToEDICOM/EDI_856/xsd/v1"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <oracle-xsl-mapper:named-template-schema>
         <oracle-xsl-mapper:template name="string-replace">
            <oracle-xsl-mapper:mapSources/>
         </oracle-xsl-mapper:template>
      </oracle-xsl-mapper:named-template-schema>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [WED OCT 05 15:31:17 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="indexVariable"/>
  <xsl:template match="/">
    <xsl:variable name="index" select="number($indexVariable/ns4:params/ns4:Index)"/>
                   <xsl:variable name="replace" select="'&quot;'"/>
    <xsl:variable name="region" select="$indexVariable/ns4:params/ns4:Region"/>
    <imp1:OrderDetails>
      <xsl:for-each select="/ns1:EDIOutboundFileBunch/ns1:OrderDetails[$index]/ns1:OrderLines">
        <imp1:OrderLines>
          <imp1:Invoice_No>
            <xsl:value-of select="ns1:DELIVERY_NUMBER"/>
          </imp1:Invoice_No>
          <imp1:PackSlip_Number>
            <xsl:value-of select="ns1:PACKING_SLIP"/>
          </imp1:PackSlip_Number>
          <imp1:Document_Date>
            <xsl:value-of select="xp20:format-dateTime(ns1:COMM_SYSDATE,&quot;[M01]/[D01]/[Y0001]&quot;)"/>
          </imp1:Document_Date>
          <imp1:OU_Name>
            <xsl:value-of select="concat('&quot;',ns1:ShipFromLocation,'&quot;')"/>
          </imp1:OU_Name>
          <imp1:Ship_Address1>
            <xsl:value-of select="concat('&quot;',ns1:Ship_Address1,'&quot;')"/>
          </imp1:Ship_Address1>
          <imp1:Ship_Address2>
            <xsl:value-of select="concat('&quot;',ns1:Ship_Address2,'&quot;')"/>
          </imp1:Ship_Address2>
          <imp1:Ship_Address3>
            <xsl:value-of select="concat('&quot;',ns1:Ship_Address3,'&quot;')"/>
          </imp1:Ship_Address3>
          <imp1:Ship_City>
            <xsl:value-of select="ns1:Ship_City"/>
          </imp1:Ship_City>
          <imp1:Ship_Region>
            <xsl:value-of select="ns1:Ship_Region"/>
          </imp1:Ship_Region>
          <imp1:Ship_PostalCode>
            <xsl:value-of select="ns1:Ship_PostalCode"/>
          </imp1:Ship_PostalCode>
          <imp1:Ship_from_Country>
            <xsl:value-of select="concat('&quot;',ns1:Ship_from_Country,'&quot;')"/>
          </imp1:Ship_from_Country>
          <imp1:PortOfLoading>
            <xsl:value-of select="concat('&quot;',ns1:PortOfLoading,'&quot;')"/>
          </imp1:PortOfLoading>
          <imp1:SHIP_TO_CUSTOMER_NAME>
            <xsl:value-of select="concat('&quot;',ns1:Ship_To_Customer_Name,'&quot;')"/>
          </imp1:SHIP_TO_CUSTOMER_NAME>
          <imp1:Ship_to_Address1>
            <xsl:value-of select="concat('&quot;',ns1:Ship_to_Address1,'&quot;')"/>
          </imp1:Ship_to_Address1>
          <imp1:Ship_to_Address2>
            <xsl:value-of select="concat('&quot;',ns1:Ship_to_Address2,'&quot;')"/>
          </imp1:Ship_to_Address2>
          <imp1:Ship_to_Address3>
            <xsl:value-of select="concat('&quot;',ns1:Ship_to_Address3,'&quot;')"/>
          </imp1:Ship_to_Address3>
          <imp1:Ship_to_City>
            <xsl:value-of select="ns1:Ship_to_City"/>
          </imp1:Ship_to_City>
          <imp1:Ship_to_Region>
            <xsl:value-of select="ns1:Ship_to_Region"/>
          </imp1:Ship_to_Region>
          <imp1:Ship_to_Postal_Code>
            <xsl:value-of select="ns1:Ship_to_Postal_Code"/>
          </imp1:Ship_to_Postal_Code>
          <imp1:Ship_to_Country>
            <xsl:value-of select="concat('&quot;',ns1:Ship_to_Country,'&quot;')"/>
          </imp1:Ship_to_Country>
          <imp1:PortOfDischarge>
            <xsl:value-of select="concat('&quot;',ns1:PortOfDischarge,'&quot;')"/>
          </imp1:PortOfDischarge>
          <imp1:DateOfDeparture>
            <xsl:value-of select="xp20:format-dateTime(ns1:Etd,&quot;[M01]/[D01]/[Y0001]&quot;)"/>
          </imp1:DateOfDeparture>
          <imp1:DateOfArrival_Port>
            <xsl:value-of select="xp20:format-dateTime(ns1:Expected_Delivery_Date,&quot;[M01]/[D01]/[Y0001]&quot;)"/>
          </imp1:DateOfArrival_Port>
          <imp1:Destination_Warehouse>
            <xsl:value-of select="ns1:WAREHOUSE_CODE"/>
          </imp1:Destination_Warehouse>
          <imp1:Forwarder>
            <xsl:value-of select="ns1:Carrier_Code"/>
          </imp1:Forwarder>
          <imp1:ShipMethodCode>
            <xsl:value-of select="ns1:Ship_Method_Code"/>
          </imp1:ShipMethodCode>
          <imp1:Waybill>
            <xsl:value-of select="ns1:Waybill"/>
          </imp1:Waybill>
          <imp1:Incoterm>
            <xsl:value-of select="concat('&quot;',ns1:Feight_Method_Code,'&quot;')"/>
          </imp1:Incoterm>
          <imp1:Shipping_Instructions>
            <xsl:value-of select="concat('&quot;',ns1:Shipping_Instructions,'&quot;')"/>
          </imp1:Shipping_Instructions>
          <imp1:Item_Number>
            <xsl:value-of select="ns1:Item"/>
          </imp1:Item_Number>
          <imp1:Item_Description>
            <xsl:variable name="Item_Description">
            <xsl:call-template name="string-replace">
              <xsl:with-param name="string" select="ns1:Item_Description"/>
              <xsl:with-param name="replace" select="$replace"/>
              <xsl:with-param name="with" select="&quot; &quot;"/>
            </xsl:call-template>
            </xsl:variable>
              <xsl:value-of select="concat('&quot;',$Item_Description,'&quot;')"/> 
          </imp1:Item_Description>
          <imp1:Shipped_Qty>
            <xsl:value-of select="ns1:Shipped_Qty"/>
          </imp1:Shipped_Qty>
          <imp1:Req_UOM>
            <xsl:value-of select="ns1:UOM"/>
          </imp1:Req_UOM>
          <imp1:Unit_Price>
            <xsl:value-of select="ns1:Unit_Price"/>
          </imp1:Unit_Price>
          <imp1:Total_Amount>
            <xsl:value-of select="ns1:Total_Amount"/>
          </imp1:Total_Amount>
          <imp1:Blank_One>
            <xsl:text disable-output-escaping="no"/>
          </imp1:Blank_One>
          <imp1:Blank_Two>
            <xsl:text disable-output-escaping="no"/>
          </imp1:Blank_Two>
          <imp1:Pallet_No>
            <xsl:value-of select="ns1:Pallet"/>
          </imp1:Pallet_No>
          <imp1:Container>
            <xsl:value-of select="ns1:Container"/>
          </imp1:Container>
          <imp1:Seal_Number>
            <xsl:value-of select="ns1:Seal_Code"/>
          </imp1:Seal_Number>
          <imp1:Shipment_Date>
            <xsl:value-of select="xp20:format-dateTime(ns1:Shipment_Date,&quot;[M01]/[D01]/[Y0001]&quot;)"/>
          </imp1:Shipment_Date>
          <imp1:DateOfArrival_Site>
            <xsl:value-of select="xp20:format-dateTime(ns1:Eta_Site,&quot;[M01]/[D01]/[Y0001]&quot;)"/>
          </imp1:DateOfArrival_Site>
          <imp1:Internal_Request_Number>
            <xsl:value-of select="ns1:Internal_Request_Number"/>
          </imp1:Internal_Request_Number>
          <xsl:choose>
            <xsl:when test="($region!='US') and not(starts-with(ns1:Shipping_WhereHouse,'W'))">
              <imp1:Source_Warehouse>
                <xsl:value-of select="ns1:WAREHOUSE_CODE"/>
              </imp1:Source_Warehouse>
            </xsl:when>
            <xsl:otherwise>
              <imp1:Source_Warehouse>
                <xsl:value-of select="ns1:Shipping_WhereHouse"/>
              </imp1:Source_Warehouse>
            </xsl:otherwise>
          </xsl:choose>
          <imp1:Source_Project_ID>
            <xsl:value-of select="ns1:Src_Proj_Num"/>
          </imp1:Source_Project_ID>
          <imp1:Source_Project_Name>
            <xsl:value-of select="ns1:Src_Proj_Name"/>
          </imp1:Source_Project_Name>
          <!-- Extra mappins for US -->
          <xsl:if test="$region='US'">
            <imp1:Destination_Project_ID>
              <xsl:value-of select="ns1:Project_ID"/>
            </imp1:Destination_Project_ID>
            <imp1:Destination_Project_Name>
              <xsl:value-of select="ns1:Project_Name"/>
            </imp1:Destination_Project_Name>
            <imp1:Business_Group>
              <xsl:value-of select="ns1:Business_Group"/>
            </imp1:Business_Group>
            <imp1:ShipFromAddress_ID>
              <xsl:value-of select="ns1:Ship_From_Address_ID"/>
            </imp1:ShipFromAddress_ID>
            <imp1:ShipToAddress_ID>
              <xsl:value-of select="ns1:Ship_To_Address_ID"/>
            </imp1:ShipToAddress_ID>
            <imp1:BillToAddressID>
              <xsl:value-of select="ns1:Bill_To_Location_ID"/>
            </imp1:BillToAddressID>
            <imp1:From_Subinventory>
              <xsl:value-of select="ns1:Subinv"/>
            </imp1:From_Subinventory>
            <imp1:From_Locator>
              <xsl:value-of select="ns1:From_Locator"/>
            </imp1:From_Locator>
            <imp1:To_Subinventory>
              <xsl:value-of select="ns1:Destination_Subinventory"/>
            </imp1:To_Subinventory>
            <imp1:To_Locator>
              <xsl:value-of select="ns1:To_Locator"/>
            </imp1:To_Locator>
            <imp1:Serial_Number>
              <xsl:text disable-output-escaping="no"/>
            </imp1:Serial_Number>
            <imp1:Blank_Three>
              <xsl:text disable-output-escaping="no"/>
            </imp1:Blank_Three>
            <imp1:Blank_Four>
              <xsl:text disable-output-escaping="no"/>
            </imp1:Blank_Four>
          </xsl:if>
          <imp1:EOL>
            <xsl:text disable-output-escaping="no"/>
          </imp1:EOL>
        </imp1:OrderLines>
      </xsl:for-each>
    </imp1:OrderDetails>
  </xsl:template>
  
   <xsl:template name="string-replace">
    <xsl:param name="string"/>
    <xsl:param name="replace"/>
    <xsl:param name="with"/>
    <xsl:choose>
      <xsl:when test="contains($string, $replace)">
        <xsl:value-of select="substring-before($string, $replace)"/>
        <xsl:value-of select="$with"/>
        <xsl:call-template name="string-replace">
          <xsl:with-param name="string" select="substring-after($string,$replace)"/>
          <xsl:with-param name="replace" select="$replace"/>
          <xsl:with-param name="with" select="$with"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$string"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>