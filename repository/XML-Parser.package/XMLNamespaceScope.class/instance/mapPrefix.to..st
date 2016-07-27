accessing
mapPrefix: aPrefix to: aUri
	aPrefix isEmptyOrNil
		ifTrue: [^ self defaultNamespace: aUri].

	aPrefix = 'xml'
		ifTrue: [
			aUri = self xmlNamespaceURI
				ifFalse: [
					XMLNamespaceException signal:
						'Cannot rebind the "xml" prefix to a different namespace URI'].
			^ self].

	aPrefix = 'xmlns'
		ifTrue: [XMLNamespaceException signal: 'Cannot bind "xmlns" prefix at all'].

	(aUri = self xmlNamespaceURI or: [aUri = self xmlnsNamespaceURI])
		ifTrue: [XMLNamespaceException signal: 'Cannot alias the "xml" or "xmlns" prefixes'].

	self prefixMappings at: aPrefix put: (aUri ifNil: [''])