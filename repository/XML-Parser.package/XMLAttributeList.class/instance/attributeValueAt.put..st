accessing
attributeValueAt: aName put: aValue
	(self includesAttributeNamed: aName)
		ifTrue: [(self attributeNodeAt: aName) value: aValue]
		ifFalse: [self addName: aName value: aValue].
	^ aValue.