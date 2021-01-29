<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://www.sunpowercorp.com/Verb/VerbCommonTypes/V1" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns8="http://www.sunpowercorp.com/Noun/Lease2Outbound/V1" xmlns:ns6="http://www.sunpowercorp.com/utilities/ID/xsd/v1" xmlns:ns2="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:ens="urn:sobject.partner.soap.sforce.com" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns3="http://www.sunpowercorp.com/Common/CommonDataTypes/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:fns="urn:fault.partner.soap.sforce.com" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns7="http://www.sunpowercorp.com/Common/Lease2OutboundCommonTypes/V1" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://www.sunpowercorp.com/BOD/ProcessLease2Outbound/V1" xmlns:ns5="http://schemas.oracle.com/bpel/extension" xmlns:client="http://www.sunpowercorp.com/SunPowerApp/Lease2OutboundSFDCProv/Lease2OutboundSFDCProv_BPEL" xmlns:tns="urn:partner.soap.sforce.com" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:ns4="http://www.sunpowercorp.com/SunPowerApp/SFDCId" exclude-result-prefixes="xsi xsl ns0 plnk soap wsdl ns8 ns6 ns2 ens ns3 fns ns7 xsd ns1 ns5 client tns ns4 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/partner.wsdl"/>
            <oracle-xsl-mapper:rootElement name="queryResponse" namespace="urn:partner.soap.sforce.com"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/Lease2OutboundSFDCProv_BPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ProcessLease2Outbound" namespace="http://www.sunpowercorp.com/BOD/ProcessLease2Outbound/V1"/>
            <oracle-xsl-mapper:param name="inputVariable.payload"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/partner.wsdl"/>
            <oracle-xsl-mapper:rootElement name="update" namespace="urn:partner.soap.sforce.com"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <oracle-xsl-mapper:named-template-schema>
         <oracle-xsl-mapper:template name="FormatDate">
            <oracle-xsl-mapper:mapSources/>
         </oracle-xsl-mapper:template>
         <oracle-xsl-mapper:template name="FormatDateTime">
            <oracle-xsl-mapper:mapSources/>
         </oracle-xsl-mapper:template>
      </oracle-xsl-mapper:named-template-schema>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [MON OCT 10 16:52:09 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:key name="LeaseDistinct" match="ens:OracleOrderHeaderId__c" use="."/>
  <xsl:param name="inputVariable.payload"/>
  <xsl:template match="/">
    <tns:update>
      <xsl:for-each select="/tns:queryResponse/tns:result/tns:records">
        <xsl:if test="not(false() or ens:OracleOrderHeaderId__c  [key('LeaseDistinct',.)[2]])">
          <tns:sObjects>
            <xsl:variable name="LeaseVar" select="ens:OracleOrderHeaderId__c"/>
            <ens:type>
              <xsl:value-of select="'LeasePayment__c'"/>
            </ens:type>
            <ens:Id>
              <xsl:value-of select="substring(ens:Id[1],0.0,16.0)"/>
            </ens:Id>
            <ens:Sales_order_number__c>
              <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SoNumber"/>
            </ens:Sales_order_number__c>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SchDelivDatePv">
              <ens:Sched_Delivery_Date_PV__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SchDelivDatePv"/>
              </ens:Sched_Delivery_Date_PV__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SchDelivDateInv">
              <ens:Sched_Delivery_Date_Inverters__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SchDelivDateInv"/>
              </ens:Sched_Delivery_Date_Inverters__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SchDelivDateMount">
              <ens:Sched_Delivery_Date_Mounting__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SchDelivDateMount"/>
              </ens:Sched_Delivery_Date_Mounting__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:DelivDatePv">
              <ens:Delivery_Date_PV__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:DelivDatePv"/>
              </ens:Delivery_Date_PV__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:DelivDateInv">
              <ens:Delivery_Date_Inverters__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:DelivDateInv"/>
              </ens:Delivery_Date_Inverters__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:DelivDateMount">
              <ens:Delivery_Date_Mounting__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:DelivDateMount"/>
              </ens:Delivery_Date_Mounting__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:PONumberOrig">
              <ens:Purchase_Order_Number_Origination__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:PONumberOrig"/>
              </ens:Purchase_Order_Number_Origination__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:PONumberInstall">
              <ens:Purchase_Order_Number_Installation__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:PONumberInstall"/>
              </ens:Purchase_Order_Number_Installation__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:PONumberInter">
              <ens:Purchase_Order_Number_Interconnect__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:PONumberInter"/>
              </ens:Purchase_Order_Number_Interconnect__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:POCreationDateOrig">
              <ens:PO_Creation_Date_Origination__c>
                <xsl:call-template name="FormatDateTime">
                  <xsl:with-param name="inputDate" select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:POCreationDateOrig"/>
                </xsl:call-template>
              </ens:PO_Creation_Date_Origination__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:POCreationDateInstall">
              <ens:PO_Creation_Date_Installation__c>
                <xsl:call-template name="FormatDateTime">
                  <xsl:with-param name="inputDate" select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:POCreationDateInstall"/>
                </xsl:call-template>
              </ens:PO_Creation_Date_Installation__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:POCreationDateInter">
              <ens:PO_Creation_Date_Interconnect__c>
                <xsl:call-template name="FormatDateTime">
                  <xsl:with-param name="inputDate" select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:POCreationDateInter"/>
                </xsl:call-template>
              </ens:PO_Creation_Date_Interconnect__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:POAmountOrig">
              <ens:PO_Amount_Origination__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:POAmountOrig"/>
              </ens:PO_Amount_Origination__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:POAmountInstall">
              <ens:PO_Amount_Installation__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:POAmountInstall"/>
              </ens:PO_Amount_Installation__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:POAmountInter">
              <ens:PO_Amount_Interconnect__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:POAmountInter"/>
              </ens:PO_Amount_Interconnect__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:POReceiptDateOrigination">
              <ens:PO_Receipt_Origination__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:POReceiptDateOrigination"/>
              </ens:PO_Receipt_Origination__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:POReceiptDateInstallation">
              <ens:PO_Receipt_Installation__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:POReceiptDateInstallation"/>
              </ens:PO_Receipt_Installation__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:POReceiptDateInterConnect">
              <ens:PO_Receipt_Interconnect__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:POReceiptDateInterConnect"/>
              </ens:PO_Receipt_Interconnect__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SupInvNumOrigination">
              <ens:Supplier_Invoice_Number_Origination__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SupInvNumOrigination"/>
              </ens:Supplier_Invoice_Number_Origination__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SupInvNumInstallation">
              <ens:Supplier_Invoice_Number_Installation__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SupInvNumInstallation"/>
              </ens:Supplier_Invoice_Number_Installation__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SupInvNumInterConnect">
              <ens:Supplier_Invoice_Number_Interconnect__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SupInvNumInterConnect"/>
              </ens:Supplier_Invoice_Number_Interconnect__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SupInvAmtOrigination">
              <ens:Supplier_Invoice_Amount_Origination__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SupInvAmtOrigination"/>
              </ens:Supplier_Invoice_Amount_Origination__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SupInvAmtInstallation">
              <ens:Supplier_Invoice_Amount_Installation__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SupInvAmtInstallation"/>
              </ens:Supplier_Invoice_Amount_Installation__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SupInvAmtInterConnect">
              <ens:Supplier_Invoice_Amount_Interconnect__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SupInvAmtInterConnect"/>
              </ens:Supplier_Invoice_Amount_Interconnect__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:PaymentAmtOrigination">
              <ens:Payment_Amount_Origination__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:PaymentAmtOrigination"/>
              </ens:Payment_Amount_Origination__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:PaymentAmtInstallation">
              <ens:Payment_Amount_Installation__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:PaymentAmtInstallation"/>
              </ens:Payment_Amount_Installation__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:PaymentAmtInterConnect">
              <ens:Payment_Amount_Interconnect__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:PaymentAmtInterConnect"/>
              </ens:Payment_Amount_Interconnect__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:PaymentDateOrigination">
              <ens:Payment_Date_Origination__c>
                <xsl:call-template name="FormatDate">
                  <xsl:with-param name="inputDate" select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:PaymentDateOrigination"/>
                </xsl:call-template>
              </ens:Payment_Date_Origination__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:PaymentDateInstallation">
              <ens:Payment_Date_Installation__c>
                <xsl:call-template name="FormatDate">
                  <xsl:with-param name="inputDate" select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:PaymentDateInstallation"/>
                </xsl:call-template>
              </ens:Payment_Date_Installation__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:PaymentDateInterConnect">
              <ens:Payment_Date_Interconnect__c>
                <xsl:call-template name="FormatDate">
                  <xsl:with-param name="inputDate" select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:PaymentDateInterConnect"/>
                </xsl:call-template>
              </ens:Payment_Date_Interconnect__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SchedulePayDateOrig">
              <ens:Scheduled_Payment_Date_Origination__c>
                <xsl:call-template name="FormatDate">
                  <xsl:with-param name="inputDate" select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SchedulePayDateOrig"/>
                </xsl:call-template>
              </ens:Scheduled_Payment_Date_Origination__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SchedulePayDateInstall">
              <ens:Scheduled_Payment_Date_Installation__c>
                <xsl:call-template name="FormatDate">
                  <xsl:with-param name="inputDate" select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SchedulePayDateInstall"/>
                </xsl:call-template>
              </ens:Scheduled_Payment_Date_Installation__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SchedulePayDateInter">
              <ens:Scheduled_Payment_Date_Interconnect__c>
                <xsl:call-template name="FormatDate">
                  <xsl:with-param name="inputDate" select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:SchedulePayDateInter"/>
                </xsl:call-template>
              </ens:Scheduled_Payment_Date_Interconnect__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:CustReqDatePv">
              <ens:Customer_Request_Date_PV__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:CustReqDatePv"/>
              </ens:Customer_Request_Date_PV__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:CustReqDateInv">
              <ens:Customer_Request_Date_Inverter__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:CustReqDateInv"/>
              </ens:Customer_Request_Date_Inverter__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:CustReqDateMount">
              <ens:Customer_Request_Date_Mounting__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:CustReqDateMount"/>
              </ens:Customer_Request_Date_Mounting__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:CustPromiseDatePv">
              <ens:Customer_Promise_Date_PV__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:CustPromiseDatePv"/>
              </ens:Customer_Promise_Date_PV__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:CustPromiseDateInv">
              <ens:Customer_Promise_Date_Inverter__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:CustPromiseDateInv"/>
              </ens:Customer_Promise_Date_Inverter__c>
            </xsl:if>
            <xsl:if test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:CustPromiseDateMount">
              <ens:Customer_Promise_Date_Mounting__c>
                <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:CustPromiseDateMount"/>
              </ens:Customer_Promise_Date_Mounting__c>
            </xsl:if>
            <xsl:choose>
              <xsl:when test="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:LEASE_COST != &quot;&quot;">
                <ens:Lease_Cost__c>
                  <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:LEASE_COST"/>
                </ens:Lease_Cost__c>
              </xsl:when>
              <xsl:otherwise>
                <ens:Lease_Cost__c>
                  <xsl:text disable-output-escaping="no">0</xsl:text>
                </ens:Lease_Cost__c>
              </xsl:otherwise>
            </xsl:choose>
            <ens:PV_Cost__c>
              <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:PV_COST"/>
            </ens:PV_Cost__c>
            <ens:Inverter_Cost__c>
              <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:INVERTER_COST"/>
            </ens:Inverter_Cost__c>
            <ens:Monitoring__c>
              <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:MONITORING_COST"/>
            </ens:Monitoring__c>
            <ens:BOS_Cost__c>
              <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:BOS_COST"/>
            </ens:BOS_Cost__c>
            <ens:Racking_Cost_Internal__c>
              <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:RACKING_COST_INTERNAL"/>
            </ens:Racking_Cost_Internal__c>
            <ens:Misc_Cost_Internal_Future_Use__c>
              <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:MISC_COST_INTERNAL"/>
            </ens:Misc_Cost_Internal_Future_Use__c>
            <ens:Racking_Cost_Installer__c>
              <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:RACKING_COST_INSTALLER"/>
            </ens:Racking_Cost_Installer__c>
            <ens:Misc_Items_Installer__c>
              <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:MISC_COST_INSTALLER"/>
            </ens:Misc_Items_Installer__c>
            <ens:Total_SPWR_Supplier_Material__c>
              <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:TOTAL_SPWR_SUPP_MATERIAL"/>
            </ens:Total_SPWR_Supplier_Material__c>
            <ens:Total_Dealer_Supplied_Material__c>
              <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:TOTAL_DEALER_SUPP_MATERIAL"/>
            </ens:Total_Dealer_Supplied_Material__c>
            <ens:Total_Material_Cost__c>
              <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:TOTAL_MATERIAL_COST"/>
            </ens:Total_Material_Cost__c>
            <ens:Total_Service_Cost_Dealer_Fee__c>
              <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:TOTAL_SERVICE_COST"/>
            </ens:Total_Service_Cost_Dealer_Fee__c>
            <ens:Net_Dealer_Service_Cost__c>
              <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:NET_DEALER_SERVICE_COST"/>
            </ens:Net_Dealer_Service_Cost__c>
			
			<!--
            <ens:Tax_Identifier__c>
              <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:TAX_IDENTIFIER"/>
            </ens:Tax_Identifier__c>
			-->
            <ens:Sales_Tax_Amount__c>
              <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:TAX_AMOUNT"/>
            </ens:Sales_Tax_Amount__c>
            <ens:Order_status__c>
              <xsl:value-of select="$inputVariable.payload/ns1:ProcessLease2Outbound/ns1:DataArea/ns8:LeaseOrder/ns8:Lease2OrderDetails[ns7:SoHeaderId=$LeaseVar]/ns7:ORDER_STATUS"/>
            </ens:Order_status__c>
          </tns:sObjects>
        </xsl:if>
      </xsl:for-each>
    </tns:update>
  </xsl:template>
  <!--  User Defined Templates  -->
  <xsl:template name="FormatDate">
    <xsl:param name="inputDate"/>
    <xsl:variable name="day">
      <xsl:value-of select="substring($inputDate,1,2)"/>
    </xsl:variable>
    <xsl:variable name="mo">
      <xsl:value-of select="substring-before(substring-after($inputDate,'-'),'-')"/>
    </xsl:variable>
    <xsl:variable name="year">
      <xsl:value-of select="substring-after(substring-after($inputDate,'-'),'-')"/>
    </xsl:variable>
    <xsl:if test="(string-length($year) &lt; 4)">
      <xsl:value-of select="20"/>
    </xsl:if>
    <xsl:value-of select="$year"/>
    <xsl:value-of select="'-'"/>
    <xsl:choose>
      <xsl:when test="$mo = 'JAN' or $mo = 'Jan'">01</xsl:when>
      <xsl:when test="$mo = 'FEB' or $mo = 'Feb'">02</xsl:when>
      <xsl:when test="$mo = 'MAR' or $mo = 'Mar'">03</xsl:when>
      <xsl:when test="$mo = 'APR' or $mo = 'Apr'">04</xsl:when>
      <xsl:when test="$mo = 'MAY' or $mo = 'May'">05</xsl:when>
      <xsl:when test="$mo = 'JUN' or $mo = 'Jun'">06</xsl:when>
      <xsl:when test="$mo = 'JUL' or $mo = 'Jul'">07</xsl:when>
      <xsl:when test="$mo = 'AUG' or $mo = 'Aug'">08</xsl:when>
      <xsl:when test="$mo = 'SEP' or $mo = 'Sep'">09</xsl:when>
      <xsl:when test="$mo = 'OCT' or $mo = 'Oct'">10</xsl:when>
      <xsl:when test="$mo = 'NOV' or $mo = 'Nov'">11</xsl:when>
      <xsl:when test="$mo = 'DEC' or $mo = 'Dec'">12</xsl:when>
    </xsl:choose>
    <xsl:value-of select="'-'"/>
    <xsl:if test="(string-length($day) &lt; 2)">
      <xsl:value-of select="0"/>
    </xsl:if>
    <xsl:value-of select="$day"/>
  </xsl:template>
  <xsl:template name="FormatDateTime">
    <xsl:param name="inputDate"/>
    <xsl:variable name="day">
      <xsl:value-of select="substring($inputDate,1,2)"/>
    </xsl:variable>
    <xsl:variable name="mo">
      <xsl:value-of select="substring-before(substring-after($inputDate,'-'),'-')"/>
    </xsl:variable>
    <xsl:variable name="year">
      <xsl:value-of select="substring-after(substring-after($inputDate,'-'),'-')"/>
    </xsl:variable>
    <xsl:if test="(string-length($year) &lt; 4)">
      <xsl:value-of select="20"/>
    </xsl:if>
    <xsl:value-of select="$year"/>
    <xsl:value-of select="'-'"/>
    <xsl:choose>
      <xsl:when test="$mo = 'JAN' or $mo = 'Jan'">01</xsl:when>
      <xsl:when test="$mo = 'FEB' or $mo = 'Feb'">02</xsl:when>
      <xsl:when test="$mo = 'MAR' or $mo = 'Mar'">03</xsl:when>
      <xsl:when test="$mo = 'APR' or $mo = 'Apr'">04</xsl:when>
      <xsl:when test="$mo = 'MAY' or $mo = 'May'">05</xsl:when>
      <xsl:when test="$mo = 'JUN' or $mo = 'Jun'">06</xsl:when>
      <xsl:when test="$mo = 'JUL' or $mo = 'Jul'">07</xsl:when>
      <xsl:when test="$mo = 'AUG' or $mo = 'Aug'">08</xsl:when>
      <xsl:when test="$mo = 'SEP' or $mo = 'Sep'">09</xsl:when>
      <xsl:when test="$mo = 'OCT' or $mo = 'Oct'">10</xsl:when>
      <xsl:when test="$mo = 'NOV' or $mo = 'Nov'">11</xsl:when>
      <xsl:when test="$mo = 'DEC' or $mo = 'Dec'">12</xsl:when>
    </xsl:choose>
    <xsl:value-of select="'-'"/>
    <xsl:if test="(string-length($day) &lt; 2)">
      <xsl:value-of select="0"/>
    </xsl:if>
    <xsl:value-of select="$day"/>
    <xsl:value-of select="'T00:00:00.000-00:00'"/>
  </xsl:template>
</xsl:stylesheet>