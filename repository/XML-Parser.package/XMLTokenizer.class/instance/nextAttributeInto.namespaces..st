tokenizing
nextAttributeInto: attributes namespaces: namespaces

	| attrName attrValue |
	attrName := self nextName.
	streamReader skipSeparators.
	streamReader next == $=
		ifFalse: [self errorExpected: '='].
	streamReader skipSeparators.
	attrValue := self nextAttributeValue.

	(self usesNamespaces
		and: [attrName beginsWith: 'xmlns'])
		ifTrue: [attrName size > 6
			ifTrue: [namespaces at: (attrName copyFrom: 7 to: attrName size) put: attrValue]
			ifFalse: [namespaces at: attrName put: attrValue]]
		ifFalse: [attributes at: attrName put: attrValue].