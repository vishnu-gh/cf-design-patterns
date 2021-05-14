<cfcomponent displayname = "BuildDirector">
	<cfproperty name="HouseBuilder" type="IHouseBuilder">
	<cffunction name="init">		
		<cfset this.HouseBuilder = arguments.HouseBuilder.init()>		
		<cfreturn this>
	</cffunction>

	<cffunction name="getHouse" returntype="House">
		<cfreturn this.HouseBuilder.getHouse()>
	</cffunction>

	<cffunction name="constructHouse" returntype="void">
		<cfset this.HouseBuilder.buildRoof()>
		<cfset this.HouseBuilder.buildWalls()>
		<cfset this.HouseBuilder.buildInterior()>
		<cfset this.HouseBuilder.buildBasement()>
		<cfset this.HouseBuilder.buildStructure()>
	</cffunction>
</cfcomponent>