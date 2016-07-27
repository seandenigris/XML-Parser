*XML-Parser-GemstoneCompatibility
isXMLReservedAttributeName
	^ self size > 4
		and: [self beginsWith: 'xml:']