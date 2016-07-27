accessing
descendentElementsNamed: aName namespaceURI: aUri
	^ self descendentElementsSelect: [:each |
		(each isNamed: aName)
			and: [each namespaceURI = aUri]]