xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)
declare namespace customxp="http://sunpowercorp.com/osb/custom/functions/OSBUtils";
declare namespace ns2="http://xmlns.oracle.com/pcbpel/adapter/db/top/ProcessAuditLogHeaders";
(:: import schema at "../XSD/ProcessAuditLogHeaders_table.xsd" ::)
declare namespace ns1="http://xmlns.sunpowercorp.com/CommonAuditLogSvc/AuditLogHeaders/xsd/v1";
(:: import schema at "../../CommonComponents/XSD/AuditLogHeaders.xsd" ::)

declare variable $osbAuditLogHeaderCollection as element() (:: schema-element(ns1:OsbAuditLogHeaderCollection) ::) external;

declare function local:func($osbAuditLogHeaderCollection as element() (:: schema-element(ns1:OsbAuditLogHeaderCollection) ::)) as element() (:: schema-element(ns2:OsbAuditLogHeaderCollection) ::) {
    <ns2:OsbAuditLogHeaderCollection>
        {
            for $OsbAuditLogHeader in $osbAuditLogHeaderCollection/ns1:OsbAuditLogHeader
            return 
            <ns2:OsbAuditLogHeader>
                <ns2:instanceId>{fn:data($OsbAuditLogHeader/ns1:instanceId)}</ns2:instanceId>
                {
                    if ($OsbAuditLogHeader/ns1:interfaceNumber)
                    then <ns2:interfaceNumber>{fn:data($OsbAuditLogHeader/ns1:interfaceNumber)}</ns2:interfaceNumber>
                    else ()
                }
                {
                    if ($OsbAuditLogHeader/ns1:processName)
                    then <ns2:processName>{fn:data($OsbAuditLogHeader/ns1:processName)}</ns2:processName>
                    else ()
                }
                {
                    if ($OsbAuditLogHeader/ns1:title)
                    then <ns2:title>{fn:data($OsbAuditLogHeader/ns1:title)}</ns2:title>
                    else ()
                }
                {
                    if ($OsbAuditLogHeader/ns1:uniqIdentifier)
                    then <ns2:uniqIdentifier>{fn:data($OsbAuditLogHeader/ns1:uniqIdentifier)}</ns2:uniqIdentifier>
                    else ()
                }
                {
                    if ($OsbAuditLogHeader/ns1:parentId)
                    then <ns2:parentId>{fn:data($OsbAuditLogHeader/ns1:parentId)}</ns2:parentId>
                    else ()
                }
                {
                    if ($OsbAuditLogHeader/ns1:componentName)
                    then <ns2:componentName>{fn:data($OsbAuditLogHeader/ns1:componentName)}</ns2:componentName>
                    else ()
                }
                {
                    if ($OsbAuditLogHeader/ns1:processStatus)
                    then <ns2:processStatus>{fn:data($OsbAuditLogHeader/ns1:processStatus)}</ns2:processStatus>
                    else ()
                }
                {
                    if ($OsbAuditLogHeader/ns1:payload)
                    then <ns2:payload>{customxp:encodeToBase64(fn:data($OsbAuditLogHeader/ns1:payload))}</ns2:payload>
                    else ()
                }
                {
                    if ($OsbAuditLogHeader/ns1:createdDate)
                    then <ns2:createdDate>{fn:data($OsbAuditLogHeader/ns1:createdDate)}</ns2:createdDate>
                    else ()
                }
                {
                    if ($OsbAuditLogHeader/ns1:lastUpdateDate)
                    then <ns2:lastUpdateDate>{fn:data($OsbAuditLogHeader/ns1:lastUpdateDate)}</ns2:lastUpdateDate>
                    else ()
                }
                {
                    if ($OsbAuditLogHeader/ns1:faultMessage)
                    then <ns2:faultMessage>{fn:data($OsbAuditLogHeader/ns1:faultMessage)}</ns2:faultMessage>
                    else ()
                }
                {
                    if ($OsbAuditLogHeader/ns1:attribute1)
                    then <ns2:attribute1>{fn:data($OsbAuditLogHeader/ns1:attribute1)}</ns2:attribute1>
                    else ()
                }
                {
                    if ($OsbAuditLogHeader/ns1:attribute2)
                    then <ns2:attribute2>{fn:data($OsbAuditLogHeader/ns1:attribute2)}</ns2:attribute2>
                    else ()
                }
                {
                    if ($OsbAuditLogHeader/ns1:attribute3)
                    then <ns2:attribute3>{fn:data($OsbAuditLogHeader/ns1:attribute3)}</ns2:attribute3>
                    else ()
                }
                {
                    if ($OsbAuditLogHeader/ns1:attribute4)
                    then <ns2:attribute4>{fn:data($OsbAuditLogHeader/ns1:attribute4)}</ns2:attribute4>
                    else ()
                }
                {
                    if ($OsbAuditLogHeader/ns1:attribute5)
                    then <ns2:attribute5>{fn:data($OsbAuditLogHeader/ns1:attribute5)}</ns2:attribute5>
                    else ()
                }
                {
                    if ($OsbAuditLogHeader/ns1:attribute6)
                    then <ns2:attribute6>{fn:data($OsbAuditLogHeader/ns1:attribute6)}</ns2:attribute6>
                    else ()
                }
                {
                    if ($OsbAuditLogHeader/ns1:attribute7)
                    then <ns2:attribute7>{fn:data($OsbAuditLogHeader/ns1:attribute7)}</ns2:attribute7>
                    else ()
                }
                {
                    if ($OsbAuditLogHeader/ns1:attribute8)
                    then <ns2:attribute8>{fn:data($OsbAuditLogHeader/ns1:attribute8)}</ns2:attribute8>
                    else ()
                }</ns2:OsbAuditLogHeader>
        }</ns2:OsbAuditLogHeaderCollection>
};

local:func($osbAuditLogHeaderCollection)
