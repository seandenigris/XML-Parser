namespaces
declareNamespace: aPrefix uri: aUri
	(self scope isPrefix: aPrefix mappedTo: aUri)
		ifTrue: [^ self].

	self mapPrefix: aPrefix to: aUri.