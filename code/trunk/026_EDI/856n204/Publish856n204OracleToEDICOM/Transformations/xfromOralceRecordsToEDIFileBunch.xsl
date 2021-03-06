<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="2.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/selectDetailsFromOracle" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/AQ/EDICom/Publish856n204OracleToEDICOM/DequeEDISignal" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:opaque="http://xmlns.oracle.com/pcbpel/adapter/opaque/" xmlns:ns1="http://www.sunpowercorp.com/Publish856n204OracleToEDICOM/EDIOutboundFileBunch/xsd/v1" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/EDICom/Publish856n204OracleToEDICOM/selectDetailsFromOracle" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl db plt wsdl xsd tns ns0 pc opaque ns1 jca xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:fn="http://www.w3.org/2005/xpath-functions"
                xmlns:ns3="http://www.sunpowercorp.com/utilities/xsd/OrgAssignments/V1"
                xmlns:ns5="http://schemas.oracle.com/bpel/extension"
                xmlns:ns2="http://www.sunpowercorp.com/Publish856n204OracleToEDICOM/EDI/xsd/v1"
                xmlns:ns6="http://www.sunpowercorp.com/Publish856n204OracleToEDICOM/EDI_204/xsd/v1"
                xmlns:ns4="http://www.sunpowercorp.com/utilities/indexparams/xsdV1">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../selectDetailsFromOracle.wsdl"/>
            <oracle-xsl-mapper:rootElement name="selectDetailsFromOracleOutputCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/selectDetailsFromOracle"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../DequeEDISignal.wsdl"/>
            <oracle-xsl-mapper:rootElement name="EDIOutboundFileBunch" namespace="http://www.sunpowercorp.com/Publish856n204OracleToEDICOM/EDIOutboundFileBunch/xsd/v1"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [WED OCT 05 15:31:17 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="db:selectDetailsFromOracleOutputCollection">
    <ns1:EDIOutboundFileBunch>
      <xsl:for-each-group select="db:selectDetailsFromOracleOutput" group-by="db:group_id">
        <!--  <xsl:for-each-group select="current-group()" group-by="db:comn_delivery_number" >-->
        <ns1:OrderDetails>
          <xsl:for-each select="current-group()">
            <ns1:OrderLines>
              <ns1:DELIVERY_NUMBER>
                <xsl:value-of select="db:comn_delivery_number"/>
              </ns1:DELIVERY_NUMBER>
              <ns1:PACKING_SLIP>
                <xsl:value-of select="db:comn_packing_slip"/>
              </ns1:PACKING_SLIP>
              <ns1:Ship_Address1>
                <xsl:value-of select="db:comn_ship_from_address_1"/>
              </ns1:Ship_Address1>
              <ns1:Ship_Address2>
                <xsl:value-of select="db:comn_ship_from_address_2"/>
              </ns1:Ship_Address2>
              <ns1:Ship_Address3>
                <xsl:value-of select="db:comn_ship_from_address_3"/>
              </ns1:Ship_Address3>
              <ns1:Ship_City>
                <xsl:value-of select="db:comn_ship_from_city"/>
              </ns1:Ship_City>
              <ns1:Ship_Region>
                <xsl:value-of select="db:comn_ship_from_region"/>
              </ns1:Ship_Region>
              <ns1:Ship_PostalCode>
                <xsl:value-of select="db:comn_ship_from_postal_code"/>
              </ns1:Ship_PostalCode>
              <ns1:Ship_from_Country>
                <xsl:value-of select="db:comn_ship_from_country"/>
              </ns1:Ship_from_Country>
              <ns1:Ship_To_Customer_Name>
                <xsl:value-of select="db:customer_name"/>
              </ns1:Ship_To_Customer_Name>
              <ns1:Ship_to_Address1>
                <xsl:value-of select="db:comn_ship_to_address_1"/>
              </ns1:Ship_to_Address1>
              <ns1:Ship_to_Address2>
                <xsl:value-of select="db:comn_ship_to_address_2"/>
              </ns1:Ship_to_Address2>
              <ns1:Ship_to_Address3>
                <xsl:value-of select="db:comn_ship_to_address_3"/>
              </ns1:Ship_to_Address3>
              <ns1:Ship_to_Address4>
                <xsl:value-of select="db:c_204_ship_to_address_4"/>
              </ns1:Ship_to_Address4>
              <ns1:Ship_to_City>
                <xsl:value-of select="db:comn_ship_to_city"/>
              </ns1:Ship_to_City>
              <ns1:Ship_to_Region>
                <xsl:value-of select="db:comn_ship_to_region"/>
              </ns1:Ship_to_Region>
              <ns1:Ship_to_Postal_Code>
                <xsl:value-of select="db:comn_ship_to_postal_code"/>
              </ns1:Ship_to_Postal_Code>
              <ns1:Ship_to_Country>
                <xsl:value-of select="db:comn_ship_to_country"/>
              </ns1:Ship_to_Country>
              <ns1:Expected_Delivery_Date>
                <xsl:value-of select="db:comn_eta_port"/>
              </ns1:Expected_Delivery_Date>
              <ns1:WAREHOUSE_CODE>
                <xsl:value-of select="db:comn_dest_warehouse_code"/>
              </ns1:WAREHOUSE_CODE>
              <ns1:Carrier_Code>
                <xsl:value-of select="db:comn_carrier_code"/>
              </ns1:Carrier_Code>
              <ns1:Ship_Method_Code>
                <xsl:value-of select="db:comn_ship_method_code"/>
              </ns1:Ship_Method_Code>
              <ns1:Waybill>
                <xsl:value-of select="db:comn_waybill"/>
              </ns1:Waybill>
              <ns1:Feight_Method_Code>
                <xsl:value-of select="db:comn_freight_terms_code"/>
              </ns1:Feight_Method_Code>
              <ns1:Shipping_Instructions>
                <!--xsl:value-of select="db:comn_shipping_instructions"/-->
                <!-- Translate JUNK/Special chars in SOA -->
                <xsl:value-of select="translate(db:comn_shipping_instructions,                               &quot;:?*+'&lt;>&quot;,                              &quot;&quot;)"/>
              </ns1:Shipping_Instructions>
              <ns1:Item>
                <xsl:value-of select="db:comn_item_flex"/>
              </ns1:Item>
              <ns1:Item_Description>
                <!--xsl:value-of select="db:comn_item_description"/-->
                <!-- Translate JUNK/Special chars in SOA -->
                 <xsl:value-of select="translate(db:comn_item_description,                               &quot;:?*+'&lt;>&quot;,                              &quot;&quot;)"/>
              </ns1:Item_Description>
              <ns1:Shipped_Qty>
                <xsl:value-of select="db:comn_shipped_quantity"/>
              </ns1:Shipped_Qty>
              <ns1:UOM>
                <xsl:value-of select="db:comn_requested_quantity_uom"/>
              </ns1:UOM>
              <ns1:Shipment_Date>
                <xsl:value-of select="db:comn_ship_date"/>
              </ns1:Shipment_Date>
              <ns1:Shipping_WhereHouse>
                <xsl:value-of select="db:comn_src_warehouse_code"/>
              </ns1:Shipping_WhereHouse>
              <ns1:Project_ID>
                <xsl:value-of select="db:comn_destination_project_id"/>
              </ns1:Project_ID>
              <ns1:Project_Name>
                <xsl:value-of select="db:comn_destination_project_name"/>
              </ns1:Project_Name>
              <ns1:Business_Group>
                <xsl:value-of select="db:comn_business_group"/>
              </ns1:Business_Group>
              <ns1:Ship_From_Address_ID>
                <xsl:value-of select="db:comn_ship_from_location_id"/>
              </ns1:Ship_From_Address_ID>
              <ns1:Ship_To_Address_ID>
                <xsl:value-of select="db:comn_ship_to_location_id"/>
              </ns1:Ship_To_Address_ID>
              <ns1:Subinv>
                <xsl:value-of select="db:comn_source_subinventory"/>
              </ns1:Subinv>
              <ns1:To_locator>
                <xsl:value-of select="db:c_856_to_locator"/>
              </ns1:To_locator>
              <ns1:comn_serial_number>
                <xsl:value-of select="db:Serial_Number"/>
              </ns1:comn_serial_number>
              <ns1:SO>
                <xsl:value-of select="db:comn_order_number"/>
              </ns1:SO>
              <ns1:Line>
                <xsl:value-of select="db:c_204_source_line_number"/>
              </ns1:Line>
              <ns1:Customer_PO>
                <xsl:value-of select="db:c_204_cust_po_number"/>
              </ns1:Customer_PO>
              <ns1:Req_Qty>
                <xsl:value-of select="db:c_204_requested_quantity"/>
              </ns1:Req_Qty>
              <ns1:Packing_Instructions>
                <xsl:value-of select="db:c_204_packing_instructions"/>
              </ns1:Packing_Instructions>
              <ns1:BillToAddressID>
                <xsl:value-of select="db:c_204_jgzz_fiscal_code"/>
              </ns1:BillToAddressID>
              <ns1:BillToAddress1>
                <xsl:value-of select="db:c_204_ship_bill_address_1"/>
              </ns1:BillToAddress1>
              <ns1:BillToAddress2>
                <xsl:value-of select="db:c_204_ship_bill_address_2"/>
              </ns1:BillToAddress2>
              <ns1:BillToAddress3>
                <xsl:value-of select="db:c_204_ship_bill_address_3"/>
              </ns1:BillToAddress3>
              <ns1:BillToCity>
                <xsl:value-of select="db:c_204_ship_bill_city"/>
              </ns1:BillToCity>
              <ns1:BillToRegion>
                <xsl:value-of select="db:c_204_ship_bill_region"/>
              </ns1:BillToRegion>
              <ns1:BillToPostalcode>
                <xsl:value-of select="db:c_204_ship_bill_postal_code"/>
              </ns1:BillToPostalcode>
              <ns1:BillToCountry>
                <xsl:value-of select="db:c_204_ship_bill_country"/>
              </ns1:BillToCountry>
              <ns1:VAT>
                <xsl:value-of select="db:c_204_vat"/>
              </ns1:VAT>
              <ns1:OrderType>
                <xsl:value-of select="db:c_204_order_type"/>
              </ns1:OrderType>
              <ns1:ShipmentPriority>
                <xsl:value-of select="db:c_204_shipment_priority"/>
              </ns1:ShipmentPriority>
              <ns1:ShipToContactName>
                <xsl:value-of select="db:c_204_ship_to_contact_name"/>
              </ns1:ShipToContactName>
              <ns1:ShipToContactPhone>
                <xsl:value-of select="db:c_204_ship_to_contact_phone"/>
              </ns1:ShipToContactPhone>
              <ns1:HeaderAttachments>
                <xsl:value-of select="db:c_204_header_attachments"/>
              </ns1:HeaderAttachments>
              <ns1:ParentItemNumber>
                <xsl:value-of select="db:c_204_parent_item"/>
              </ns1:ParentItemNumber>
              <ns1:BOMQty>
                <xsl:value-of select="db:c_204_parent_qty"/>
              </ns1:BOMQty>
              <ns1:ShipFromLocation>
                <xsl:value-of select="db:c_856_ship_from_location"/>
              </ns1:ShipFromLocation>
              <ns1:PortOfLoading>
                <xsl:value-of select="db:c_856_port_of_loading"/>
              </ns1:PortOfLoading>
              <ns1:Tax_Name>
                <xsl:value-of select="db:c_856_tax_name"/>
              </ns1:Tax_Name>
              <ns1:PortOfDischarge>
                <xsl:value-of select="db:c_856_port_of_discharge"/>
              </ns1:PortOfDischarge>
              <ns1:Etd>
                <xsl:value-of select="db:comn_etd"/>
              </ns1:Etd>
              <ns1:Unit_Price>
                <xsl:value-of select="db:c_856_unit_price"/>
              </ns1:Unit_Price>
              <ns1:Total_Amount>
                <xsl:value-of select="db:c_856_total_amount"/>
              </ns1:Total_Amount>
              <ns1:Pallet>
                <xsl:value-of select="db:c_856_pallet"/>
              </ns1:Pallet>
              <ns1:Container>
                <xsl:value-of select="db:c_856_container"/>
              </ns1:Container>
              <ns1:Seal_Code>
                <xsl:value-of select="db:c_856_seal_code"/>
              </ns1:Seal_Code>
              <ns1:Eta_Site>
                <xsl:value-of select="db:c_856_eta_site"/>
              </ns1:Eta_Site>
              <ns1:Internal_Request_Number>
                <xsl:value-of select="db:c_856_internal_request_number"/>
              </ns1:Internal_Request_Number>
              <ns1:Src_Proj_Num>
                <xsl:value-of select="db:c_856_src_proj_num"/>
              </ns1:Src_Proj_Num>
              <ns1:Src_Proj_Name>
                <xsl:value-of select="db:c_856_src_proj_name"/>
              </ns1:Src_Proj_Name>
              <ns1:Bill_To_Location_ID>
                <xsl:value-of select="db:c_856_bill_to_location_id"/>
              </ns1:Bill_To_Location_ID>
              <ns1:From_Locator>
                <xsl:value-of select="db:c_856_from_locator"/>
              </ns1:From_Locator>
              <ns1:Destination_Subinventory>
                <xsl:value-of select="db:c_856_destination_subinventory"/>
              </ns1:Destination_Subinventory>
              <ns1:SIGNAL_TYPE>
                <xsl:value-of select="db:signal_type"/>
              </ns1:SIGNAL_TYPE>
              <ns1:REGION>
                <xsl:value-of select="db:region"/>
              </ns1:REGION>
              <ns1:COMM_SYSDATE>
                <xsl:value-of select="db:comn_sys_date"/>
              </ns1:COMM_SYSDATE>
              <ns1:Group_ID>
                <xsl:value-of select="db:group_id"/>
              </ns1:Group_ID>
            </ns1:OrderLines>
          </xsl:for-each>
        </ns1:OrderDetails>
        <!--  </xsl:for-each-group> -->
      </xsl:for-each-group>
    </ns1:EDIOutboundFileBunch>
  </xsl:template>
</xsl:stylesheet>