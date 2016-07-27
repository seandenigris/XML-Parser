accessing
descendantElementsNamed: aName namespaceURI: aURI
	^ self descendantElementsSelect: [:each |
		(each isNamed: aName)
			and: [each namespaceURI = aURI]]