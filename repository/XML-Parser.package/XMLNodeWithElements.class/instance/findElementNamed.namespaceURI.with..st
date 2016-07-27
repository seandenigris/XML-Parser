searching
findElementNamed: aName namespaceURI: aUri with: aBlock
	^ self allElementsDetect: [:each |
		(each isNamed: aName)
			and: [each namespaceURI = aUri
				and: [aBlock value: each]]]