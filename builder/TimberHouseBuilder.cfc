<cfcomponent displayname = "StoneHouseBuilder" implements="IHouseBuilder">
	<cfproperty name="house" type="House">
	
	<cffunction name="init">
		<cfset this.house = createObject('component', 'House')>		
		<cfreturn this>
	</cffunction>

	<cffunction name="buildRoof" returntype="void">
		<cfset this.house.setRoof('Timber')>
	</cffunction>

	<cffunction name="buildWalls" returntype="void">
		<cfset this.house.setWalls('Timber')>
	</cffunction>

	<cffunction name="buildBasement" returntype="void">
		<cfset this.house.setBasement('Timber')>
	</cffunction>

	<cffunction name="buildStructure" returntype="void">
		<cfset this.house.setStructure('Timber')>
	</cffunction>

	<cffunction name="buildInterior" returntype="void">
		<cfset this.house.setInterior('Timber')>
	</cffunction>

	<cffunction name="getHouse" returntype="House">
		<cfreturn this.house>
	</cffunction>	

</cfcomponent>