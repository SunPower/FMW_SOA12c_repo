xquery version "2004-draft";
(:: pragma bea:global-element-parameter parameter="$osbAuditLogHeaderCollection1" element="ns1:OsbAuditLogHeaderCollection" location="../../CommonComponents/XSD/AuditLogHeadersUpdate.xsd" ::)
(:: pragma bea:global-element-return element="ns0:OsbAuditLogHeaderCollection" location="../XSD/UpdateAuditLogHeaders_table.xsd" ::)

declare namespace ns1 = "http://xmlns.sunpowercorp.com/CommonAuditLogSvc/UpdateAuditLogHeaders/xsd/v1";
declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateAuditLogHeaders";
declare namespace xf = "http://tempuri.org/CommonAuditLogSvc/XQuery/mapHeadeLogupdate_XQ/";

declare function xf:mapHeadeLogupdate_XQ($osbAuditLogHeaderCollection1 as element(ns1:OsbAuditLogHeaderCollection))
    as element(ns0:OsbAuditLogHeaderCollection) {
        <ns0:OsbAuditLogHeaderCollection>
            {
                for $OsbAuditLogHeader in $osbAuditLogHeaderCollection1/ns1:OsbAuditLogHeader
                return
                    <ns0:OsbAuditLogHeader>
                        <ns0:instanceId>{ data($OsbAuditLogHeader/ns1:instanceId) }</ns0:instanceId>
                        {
                            for $processStatus in $OsbAuditLogHeader/ns1:processStatus
                            return
                                <ns0:processStatus>{ data($processStatus) }</ns0:processStatus>
                        }
                        {
                            for $lastUpdateDate in $OsbAuditLogHeader/ns1:lastUpdateDate
                            return
                                <ns0:lastUpdateDate>{ data($lastUpdateDate) }</ns0:lastUpdateDate>
                        }
                        {
                            for $faultMessage in $OsbAuditLogHeader/ns1:faultMessage
                            return
                                <ns0:faultMessage>{ data($faultMessage) }</ns0:faultMessage>
                        }
                    </ns0:OsbAuditLogHeader>
            }
        </ns0:OsbAuditLogHeaderCollection>
};

declare variable $osbAuditLogHeaderCollection1 as element(ns1:OsbAuditLogHeaderCollection) external;

xf:mapHeadeLogupdate_XQ($osbAuditLogHeaderCollection1)