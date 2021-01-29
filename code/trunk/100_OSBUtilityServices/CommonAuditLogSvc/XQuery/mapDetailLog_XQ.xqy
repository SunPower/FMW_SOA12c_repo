xquery version "2004-draft";
(:: pragma bea:global-element-parameter parameter="$osbAuditLogDetailsCollection1" element="ns0:OsbAuditLogDetailsCollection" location="../../CommonComponents/XSD/AuditLogDetails.xsd" ::)
(:: pragma bea:global-element-return element="ns1:OsbAuditLogDetailsCollection" location="../XSD/ProcessAuditLogDetails_table.xsd" ::)

declare namespace ns1 = "http://xmlns.oracle.com/pcbpel/adapter/db/top/ProcessAuditLogDetails";
declare namespace ns0 = "http://xmlns.sunpowercorp.com/CommonAuditLogSvc/AuditLogDetails/xsd/v1";
declare namespace xf = "http://tempuri.org/CommonAuditLogSvc/XQuery/mapDetailLog_XQ/";

declare function xf:mapDetailLog_XQ($osbAuditLogDetailsCollection1 as element(ns0:OsbAuditLogDetailsCollection))
    as element(ns1:OsbAuditLogDetailsCollection) {
        <ns1:OsbAuditLogDetailsCollection>
            {
                for $OsbAuditLogDetails in $osbAuditLogDetailsCollection1/ns0:OsbAuditLogDetails
                return
                    <ns1:OsbAuditLogDetails>
                        <ns1:instanceId>{ data($OsbAuditLogDetails/ns0:instanceId) }</ns1:instanceId>
                        {
                        if ($OsbAuditLogDetails/ns0:headerId)
                    then <ns1:headerId>{fn:data($OsbAuditLogDetails/ns0:headerId) }</ns1:headerId>
                    else ()
                           
                        }
                        {
                            if ($OsbAuditLogDetails/ns0:detailId)
                            then
                                <ns1:detailId>{ fn:data($OsbAuditLogDetails/ns0:detailId) }</ns1:detailId>
                                 else ()
                        }
                        {
                            if ($OsbAuditLogDetails/ns0:status)
                            then
                                <ns1:status>{ fn:data($OsbAuditLogDetails/ns0:status) }</ns1:status>
                                 else ()
                        }
                        {
                            if ($OsbAuditLogDetails/ns0:createdDate)
                            then
                                <ns1:createdDate>{ fn:data($OsbAuditLogDetails/ns0:createdDate) }</ns1:createdDate>
                                else()
                        }
                        {
                            if ( $OsbAuditLogDetails/ns0:payload)
                            then
                                <ns1:payload>{ fn:data($OsbAuditLogDetails/ns0:payload) }</ns1:payload>
                                else()
                        }
                        {
                            if ($OsbAuditLogDetails/ns0:attribute1)
                            then
                                <ns1:attribute1>{ fn:data($OsbAuditLogDetails/ns0:attribute1) }</ns1:attribute1>
                                else()
                        }
                        {
                            if ($OsbAuditLogDetails/ns0:attribute2)
                            then
                                <ns1:attribute2>{ fn:data($OsbAuditLogDetails/ns0:attribute2) }</ns1:attribute2>
                              else()
                        }
                        {
                            if ($OsbAuditLogDetails/ns0:attribute3)
                            then
                                <ns1:attribute3>{ fn:data($OsbAuditLogDetails/ns0:attribute3) }</ns1:attribute3>
                                else()
                        }
                        {
                            if($OsbAuditLogDetails/ns0:attribute4)
                            then
                                <ns1:attribute4>{ fn:data($OsbAuditLogDetails/ns0:attribute4) }</ns1:attribute4>
                                else()
                        }
                        {
                            if($OsbAuditLogDetails/ns0:attribute5)
                            then
                                <ns1:attribute5>{ fn:data($OsbAuditLogDetails/ns0:attribute5) }</ns1:attribute5>
                                else()
                        }
                        {
                            if($OsbAuditLogDetails/ns0:attribute6)
                            then
                                <ns1:attribute6>{ fn:data($OsbAuditLogDetails/ns0:attribute6) }</ns1:attribute6>
                                else()
                        }
                        {
                            if($OsbAuditLogDetails/ns0:attribute7)
                            then
                                <ns1:attribute7>{ fn:data($OsbAuditLogDetails/ns0:attribute7) }</ns1:attribute7>
                                else()
                        }
                        {
                            if($OsbAuditLogDetails/ns0:attribute8)
                            then
                                <ns1:attribute8>{ fn:data($OsbAuditLogDetails/ns0:attribute8) }</ns1:attribute8>
                                else()
                        }
                    </ns1:OsbAuditLogDetails>
            }
        </ns1:OsbAuditLogDetailsCollection>
};

declare variable $osbAuditLogDetailsCollection1 as element(ns0:OsbAuditLogDetailsCollection) external;

xf:mapDetailLog_XQ($osbAuditLogDetailsCollection1)