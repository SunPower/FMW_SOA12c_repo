xquery version "2004-draft";
declare namespace xf = "http://sunpowercorp.com/SharedResources/transformations/xquery/common/email/";
declare namespace dvm="http://xmlns.oracle.com/dvm";

declare function xf:emailLookup($Value as xs:string,
    $default as xs:string)
    as xs:string {

    	let $ref := getEmailAlias()/dvm:rows/dvm:row[dvm:cell[2]=$Value]
    	return
    		if (fn:empty($ref) = false())
    		then
    			data($ref/dvm:cell[1])
    		else
         		$default
};

declare variable $Value as xs:string external;
declare variable $default as xs:string external;


declare function getEmailAlias () as element()
  {
  <dvm xmlns="http://xmlns.oracle.com/dvm">
    <description>Mapping between Email Alias and Interface numbers
    </description>
	<columns>
	   <column name="InterfaceNumber"/>
	   <column name="EmailAlias"/>
	  </columns>
	 <rows>
	   
	  
	  <row>
            <cell>PES100</cell>
            <cell>soasupport@sunpowercorp.com</cell>
          </row>

     </rows>
  </dvm>
  
  };
          
          
          xf:emailLookup($Value,
    $default)