tests
testIsDeclaredPrefixURI
	| element elementsWithDeclaredPrefix oldNs |

	element := self newNodeWithElements.
	elementsWithDeclaredPrefix :=
		element allElementsSelect: [:each | each isDeclaredPrefix: 'prefix'].
	oldNs := elementsWithDeclaredPrefix anyOne resolvePrefix: 'prefix'.
	self assert: elementsWithDeclaredPrefix size = 2.

	element allElementsDo: [:each |
		self deny: (each isDeclaredPrefix: 'prefix' uri: 'newPrefixNS')].

	element declarePrefix: 'prefix' uri: 'newPrefixNS'.
	element allElementsDo: [:each |
		(elementsWithDeclaredPrefix includes: each )
			ifTrue: [self assert: (each isDeclaredPrefix: 'prefix' uri: oldNs)]
			ifFalse: [self assert: (each isDeclaredPrefix: 'prefix' uri: 'newPrefixNS')]].

	element undeclarePrefix: 'prefix'.
	element allElementsDo: [:each |
		(elementsWithDeclaredPrefix includes: each )
			ifTrue: [self assert: (each isDeclaredPrefix: 'prefix' uri: oldNs)]
			ifFalse: [self deny: (each isDeclaredPrefix: 'prefix')]].