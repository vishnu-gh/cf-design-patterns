<cfcomponent displayname = "StoneHouseBuilder" implements="IHouseBuilder">
	<cfproperty name="house" type="House">
	
	<cffunction name="init">
		<cfset this.house = createObject('component', 'House')>		
		<cfreturn this>
	</cffunction>

	<cffunction name="buildRoof" returntype="void">
		<cfset this.house.setRoof('Stone')>
	</cffunction>

	<cffunction name="buildWalls" returntype="void">
		<cfset this.house.setWalls('Stone')>
	</cffunction>

	<cffunction name="buildBasement" returntype="void">
		<cfset this.house.setBasement('Stone')>
	</cffunction>

	<cffunction name="buildStructure" returntype="void">
		<cfset this.house.setStructure('Stone')>
	</cffunction>

	<cffunction name="buildInterior" returntype="void">
		<cfset this.house.setInterior('Stone')>
	</cffunction>

	<cffunction name="getHouse" returntype="House">
		<cfreturn this.house>
	</cffunction>	

</cfcomponent>