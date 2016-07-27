handling tokens
handleReservedAttributes: anAttributeDictionary
	(anAttributeDictionary at: 'xml:base' ifAbsent: [nil])
		ifNotNil: [:uri | self currentURI: uri].
	self isValidating
		ifTrue: [self validator validateXMLIDAttributeIn: anAttributeDictionary].

	self elementNester
		setScopedAttributesNamed: #('xml:space' 'xml:base' 'xml:lang')
		from: anAttributeDictionary.