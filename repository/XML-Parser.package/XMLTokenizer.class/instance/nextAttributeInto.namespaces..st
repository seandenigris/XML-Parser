tokenizing
nextAttributeInto: attributes namespaces: namespaces
	| attrName attrValue |

	attrName := self nextName.
	streamReader skipSeparators.
	self expectNext: $=.
	streamReader skipSeparators.
	attrValue := self nextAttributeValue.

	(driver usesNamespaces
		and: [attrName beginsWith: 'xmlns'])
		ifTrue: [attrName size > 6
			ifTrue: [namespaces at: (attrName copyFrom: 7 to: attrName size) put: attrValue]
			ifFalse: [namespaces at: '' put: attrValue]]
		ifFalse: [attributes at: attrName put: attrValue].