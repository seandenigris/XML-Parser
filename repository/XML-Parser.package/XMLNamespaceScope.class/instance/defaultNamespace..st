accessing
defaultNamespace: aUri
	(aUri = self class xmlNamespaceURI
		or: [aUri = self class xmlnsNamespaceURI])
		ifTrue: [self errorCannotUseXmlOrXmlnsURIAsDefault].

	self prefixMappings at: '' put: aUri.