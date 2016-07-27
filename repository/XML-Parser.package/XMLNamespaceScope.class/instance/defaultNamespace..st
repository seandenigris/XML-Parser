accessing
defaultNamespace: aUri
	(aUri = self class xmlNamespaceURI
		or: [aUri = self class xmlnsNamespaceURI])
		ifTrue: [
			XMLNamespaceException signal:
				'Cannot use "xml" or  "xmlns" namespace URI as default namespace'].

	self prefixMappings at: '' put: aUri.