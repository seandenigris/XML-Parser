accessing
attributeNodeAt: aLocalName namespaceURI: aUri ifAbsent: aBlock
	^ self
		detect: [:each |
			each name = aLocalName
				and: [each namespaceURI = aUri]]
		ifNone: aBlock