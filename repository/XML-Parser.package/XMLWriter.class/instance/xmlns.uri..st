writing xml
xmlns: aNamespace uri: aUri
	self nestedScopes declareNamespace: aNamespace uri: aUri.

	self
		attribute:
			(aNamespace = 'xmlns'
				ifTrue: ['xmlns']
				ifFalse: ['xmlns:', aNamespace])
		value: aUri