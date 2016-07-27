accessing
defaultNamespace: aUri
	aUri = self class xmlNamespaceURI
		ifTrue: [XMLNamespaceException signal: 'Cannot use "xml" namespace URI as default namespace'].
	aUri = self class xmlnsNamespaceURI
		ifTrue: [XMLNamespaceException signal: 'Cannot use "xmlns" namespace URI as default namespace'].

	defaultNamespace := aUri.