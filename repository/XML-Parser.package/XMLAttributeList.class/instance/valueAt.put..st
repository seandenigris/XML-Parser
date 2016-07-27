accessing
valueAt: aName put: aValue
	(self includesName: aName)
		ifTrue: [(self nodeNamed: aName) value: aValue]
		ifFalse: [self addName: aName value: aValue].
	^ aValue.