accessing
mapPrefix: aPrefix to: aUri
	aPrefix isEmpty "avoid ifEmpty: closure overhead"
		ifTrue: [^ self defaultNamespace: aUri].
	aPrefix = 'xml'
		ifTrue: [
			aUri = self class xmlNamespaceURI
				ifFalse: [self errorCannotRemapXmlPrefix].
			self prefixMappings at: 'xml' put: aUri.
			^ self].
	aPrefix = 'xmlns'
		ifTrue: [self errorCannotMapXmlnsPrefix].
	(aPrefix indexOf: $:) > 0 
		ifTrue: [self errorInvalidPrefix: aPrefix].

	aUri isEmpty
		ifTrue: [self errorCannotMapPrefixToEmptyURI].
	(aUri = self class xmlNamespaceURI or: [aUri = self class xmlnsNamespaceURI])
		ifTrue: [self errorCannotAliasXmlOrXmlnsURI].
	self prefixMappings at: aPrefix put: aUri.