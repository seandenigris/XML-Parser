*XML-Parser-GemstoneCompatibility
expandWithXMLNamespaceURI: aURI
	aURI size > 0
		ifTrue: [^ 'Q{', aURI, '}', self]
		ifFalse: [^ self]