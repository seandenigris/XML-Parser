writing xml
xmlns: namespace uri: uri
	self declareNamespace: namespace uri: uri.

	self
		attribute: (namespace ifNil: ['xmlns'] ifNotNil: ['xmlns:', namespace])
		value: uri