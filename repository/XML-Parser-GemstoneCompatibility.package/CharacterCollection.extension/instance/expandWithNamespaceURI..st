*XML-Parser-GemstoneCompatibility
expandWithNamespaceURI: aURI
	aURI size > 0
		ifTrue: [^ 'Q{', aURI, '}', self]
		ifFalse: [^ self]