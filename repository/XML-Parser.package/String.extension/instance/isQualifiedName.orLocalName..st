*XML-Parser
isQualifiedName: aQualifiedName orLocalName: isLocalName
	^ self = aQualifiedName
		or: [(aQualifiedName size > isLocalName size)
			and: [self = isLocalName]]