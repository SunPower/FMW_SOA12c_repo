xquery version "2004-draft";
(:: pragma bea:global-element-parameter parameter="$commonErrorHandlerInput1" element="ns1:CommonErrorHandlerInput" location="../XSD/CommonErrorHandler.xsd" ::)
(:: pragma bea:global-element-return element="ns0:OsbErrorLogCollection" location="../XSD/ProcessOSBErrorLogs_table.xsd" ::)

declare namespace ns1 = "http://www.sunpowercorp.com/SunPowerDevelopment/utility/CommonErrorHandler/xsd/V1";
declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/top/ProcessOSBErrorLogs";
declare namespace xf = "http://tempuri.org/CommonErrorHandler/XQuery/OSBErrorLogTable_XQ/";

declare function xf:OSBErrorLogTable_XQ($commonErrorHandlerInput1 as element(ns1:CommonErrorHandlerInput))
    as element(ns0:OsbErrorLogCollection) {
        <ns0:OsbErrorLogCollection>
            <ns0:OsbErrorLog>
                <ns0:instanceNumber>{ data($commonErrorHandlerInput1/ns1:InstanceNumber) }</ns0:instanceNumber>
                <ns0:interfaceNumber>{ data($commonErrorHandlerInput1/ns1:InterfaceNumber) }</ns0:interfaceNumber>
                <ns0:processName>{ data($commonErrorHandlerInput1/ns1:InterfaceName) }</ns0:processName>
                <ns0:componentName>{ data($commonErrorHandlerInput1/ns1:ComponentName) }</ns0:componentName>
                {
                    for $UniqueIdentifier in $commonErrorHandlerInput1/ns1:UniqueIdentifier
                    return
                        <ns0:uniqueIdentifier>{ data($UniqueIdentifier) }</ns0:uniqueIdentifier>
                }
                <ns0:status>ERROR</ns0:status>
                <ns0:faultSystemname>{ data($commonErrorHandlerInput1/ns1:FaultSystemName) }</ns0:faultSystemname>
                <ns0:faultCode>{ data($commonErrorHandlerInput1/ns1:Fault/ns1:FaultCode) }</ns0:faultCode>
                <ns0:faultDescription>{ data($commonErrorHandlerInput1/ns1:Fault/ns1:FaultDescription) }</ns0:faultDescription>
                <ns0:faultMessage>{ data($commonErrorHandlerInput1/ns1:Fault/ns1:FaultMessage) }</ns0:faultMessage>
                <ns0:faultedDateTime>{ data($commonErrorHandlerInput1/ns1:Fault/ns1:FaultTime) }</ns0:faultedDateTime>
                <ns0:severity>{ data($commonErrorHandlerInput1/ns1:Severity) }</ns0:severity>
                {
                    for $CorrectiveAction in $commonErrorHandlerInput1/ns1:CorrectiveAction
                    return
                        <ns0:correctiveAction>{ data($CorrectiveAction) }</ns0:correctiveAction>
                }
                {
                    for $SendEmail in $commonErrorHandlerInput1/ns1:SendEmail
                    return
                        <ns0:emailSent>{ data($SendEmail) }</ns0:emailSent>
                }
                <ns0:openServiceTicket>{ data($commonErrorHandlerInput1/ns1:bOpenServiceTicket) }</ns0:openServiceTicket>
            </ns0:OsbErrorLog>
        </ns0:OsbErrorLogCollection>
};

declare variable $commonErrorHandlerInput1 as element(ns1:CommonErrorHandlerInput) external;

xf:OSBErrorLogTable_XQ($commonErrorHandlerInput1)