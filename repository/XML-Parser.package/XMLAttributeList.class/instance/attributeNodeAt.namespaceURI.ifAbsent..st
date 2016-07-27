accessing
attributeNodeAt: aName namespaceURI: aURI ifAbsent: aBlock
	| attributeNode |

	((attributeNode := self attributeNodeAt: aName) notNil
		and: [attributeNode namespaceURI = aURI])
		ifTrue: [^ attributeNode]
		ifFalse: [^ aBlock value]