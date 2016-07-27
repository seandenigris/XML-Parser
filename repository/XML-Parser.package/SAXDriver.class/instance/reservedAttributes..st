private
reservedAttributes: aDictionary
	(aDictionary includesKey: 'xml:base')
		ifTrue: [self currentURI: (aDictionary at: 'xml:base')].
	self isValidating
		ifTrue: [self validator validateXMLIDAttributeIn: aDictionary].

	self elementNester
		addScopedAttributes: #('xml:space' 'xml:base' 'xml:lang')
		from: aDictionary.