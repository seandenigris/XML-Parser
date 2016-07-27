tokenizing
nextAttributeInto: attributes namespaces: namespaces

	| attrName attrValue |
	attrName := self nextName.
	self skipSeparators.
	self next == $=
		ifFalse: [self errorExpected: '='].
	self skipSeparators.
	attrValue := self nextAttributeValue.

	(self usesNamespaces
		and: [(attrName findString: 'xmlns') = 1])
		ifTrue: [attrName size > 6
			ifTrue: [namespaces at: (attrName copyFrom: 7 to: attrName size) put: attrValue]
			ifFalse: [namespaces at: attrName put: attrValue]]
		ifFalse: [attributes at: attrName put: attrValue]