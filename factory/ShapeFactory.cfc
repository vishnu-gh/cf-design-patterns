<cfcomponent displayname="ShapesFactory">
	<cffunction name="getShape" returnType="IShape">
		<cfargument name="shapeType" type="String" required="true">
		<cftry>
			<cfdump var="#arguments#">
			<cfswitch expression="#arguments.shapeType#">
				<cfcase value="circle">
					<cfreturn createObject('component', 'circle')>
				</cfcase>
				<cfcase value="triangle">					
					<cfreturn createObject('component', 'triangle')>
				</cfcase>
				<cfdefaultcase>
					<cfthrow message="Invalid param:#arguments.shapeType#">
				</cfdefaultcase>
			</cfswitch>
			<cfcatch type="any">
				<cfdump var="#cfcatch.message#">
				<cfabort>
			</cfcatch>
		</cftry>
	</cffunction>
</cfcomponent>