private
handleReservedAttributes: anAttributeDictionary
	anAttributeDictionary
		at: 'xml:base'
		ifPresent: [:uri |
			"expand the new base URI using the current"
			anAttributeDictionary
				at: 'xml:base'
				put: (self baseURI asXMLURI / uri) asString].
	self isValidating
		ifTrue: [self validator validateXMLIDAttributeIn: anAttributeDictionary].

	self elementNester
		setScopedAttributesNamed: self scopedAttributeNames
		from: anAttributeDictionary.

	hasUnhandledReservedAttributes := false.