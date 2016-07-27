accessing
allElementsNamed: aName namespaceURI: aUri
	^ self allElementsSelect: [:each |
		(each isNamed: aName)
			and: [each namespaceURI = aUri]]