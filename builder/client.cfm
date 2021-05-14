<cftry>

	<cfset StoneHouseBuilder = createObject('component', 'StoneHouseBuilder')>
	<cfset BuildDirector = createObject('component', 'BuildDirector').init(HouseBuilder = StoneHouseBuilder)>
	<cfset BuildDirector.constructHouse()>
	<cfdump var="#BuildDirector.getHouse()#">

	<cfset TimberHouseBuilder = createObject('component', 'TimberHouseBuilder')>
	<cfset BuildDirector = createObject('component', 'BuildDirector').init(HouseBuilder = TimberHouseBuilder)>
	<cfset BuildDirector.constructHouse()>
	<cfdump var="#BuildDirector.getHouse()#">

	<cfcatch type="any">
		<cfdump var="#cfcatch#">
	</cfcatch>
</cftry>
<p><a href="../index.cfm">home</a></p>