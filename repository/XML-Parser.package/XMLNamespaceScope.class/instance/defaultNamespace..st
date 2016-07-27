accessing
defaultNamespace: aUri
	aUri = self xmlNamespaceURI
		ifTrue: [XMLNamespaceException signal: 'Cannot use "xml" namespace URI as default namespace'].
	aUri = self xmlnsNamespaceURI
		ifTrue: [XMLNamespaceException signal: 'Cannot use "xmlns" namespace URI as default namespace'].

	defaultNamespace := aUri.