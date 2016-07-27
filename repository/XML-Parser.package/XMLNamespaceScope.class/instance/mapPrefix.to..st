accessing
mapPrefix: aPrefix to: aUri
	aPrefix isEmpty
		ifTrue: [^ self defaultNamespace: aUri].
	(aPrefix at: 1) == $x "skip comparisons below"
		ifTrue: [
			aPrefix = 'xml'
				ifTrue: [
					aUri = self class xmlNamespaceURI
						ifTrue: [^ self].
					XMLNamespaceException signal:
						'Cannot rebind the "xml" prefix to a different namespace URI'].
			aPrefix = 'xmlns'
				ifTrue: [XMLNamespaceException signal: 'Cannot bind "xmlns" prefix at all']].
	(aPrefix indexOf: $:) > 0 
		ifTrue: [XMLNamespaceException signal: 'Prefix "', aPrefix, '" contains ":" character'].

	aUri isEmpty
		ifTrue: [XMLNamespaceException signal: 'Empty URIs cannot be mapped to prefixes'].
	(aUri = self class xmlNamespaceURI or: [aUri = self class xmlnsNamespaceURI])
		ifTrue: [XMLNamespaceException signal: 'Cannot alias the "xml" or "xmlns" prefixes'].

	self prefixMappings at: aPrefix put: aUri.