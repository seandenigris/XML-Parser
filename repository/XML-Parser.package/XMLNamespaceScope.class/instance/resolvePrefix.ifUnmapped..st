accessing
resolvePrefix: aPrefix ifUnmapped: aBlock
	aPrefix isEmptyOrNil
		ifTrue: [^ self defaultNamespace].
	aPrefix = 'xml'
		ifTrue: [^ self xmlNamespaceURI].
	aPrefix = 'xmlns'
		ifTrue: [^ self xmlnsNamespaceURI].

	^ self prefixMappings at: aPrefix ifAbsent: aBlock