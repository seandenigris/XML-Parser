accessing
expandedWith: aUri
	^ aUri
		ifNil: [self localName]
		ifNotNil: ['{', aUri, '}', self localName]