*XML-Parser-GemstoneCompatibility
isReservedAttributeName
	^ self size > 4
		and: [self beginsWith: 'xml:']