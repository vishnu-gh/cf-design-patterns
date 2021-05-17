<cftry>
	<cfset shapeFactory = createObject('component', 'ShapeFactory')>

	<cfset shapeObj1 = shapeFactory.getShape('circle')>
	<cfdump var="#shapeObj1.draw()#">
	<br/>
	<cfset shapeObj2 = shapeFactory.getShape('triangle')>

	<cfdump var="#shapeObj2.draw()#">
	
	<cfcatch type="any">
		<cfdump var=#cfcatch#>
	</cfcatch>
</cftry>
<p><a href="../index.cfm">home</a></p>