accessing
attributeNodeAt: aLocalName namespaceURI: aUri ifAbsent: aBlock
	^ self
		detect: [:each | (each isNamed: aLocalName) and: [each namespaceURI = aUri]]
		ifNone: aBlock