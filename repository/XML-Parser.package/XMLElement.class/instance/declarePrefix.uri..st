namespaces
declarePrefix: aPrefix uri: aUri
	(self namespaceScope includesPrefix: aPrefix mappedTo: aUri)
		ifTrue: [^ self].

	self mapPrefix: aPrefix to: aUri.