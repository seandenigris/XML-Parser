*XML-Parser-GemstoneCompatibility
isQualifiedName: aQualifiedName orLocalName: aLocalName
	^ self = aQualifiedName
		or: [(aQualifiedName size > aLocalName size)
			and: [self = aLocalName]]