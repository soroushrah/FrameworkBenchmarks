<cfsetting enablecfoutputonly=true>
<cfheader name="Server" value="cfml-lucee">
<cfheader name="Content-Type" value="application/json">
<cfquery name="qry" datasource="world" returntype="array">
    SELECT id, randomNumber
    FROM World
    WHERE id = <cfqueryparam value="#randRange( 1, 10000 )#" cfsqltype="integer">
</cfquery>
<cfoutput>#serializeJSON( qry[ 1 ] )#</cfoutput>