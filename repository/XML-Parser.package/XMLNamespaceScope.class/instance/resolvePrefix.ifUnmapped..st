accessing
resolvePrefix: aPrefix ifUnmapped: aBlock
	aPrefix isEmpty
		ifTrue: [^ self defaultNamespace].

	^ self prefixMappings
		at: aPrefix
		ifAbsent: [
			aPrefix = 'xml'
				ifTrue: [self class xmlNamespaceURI]
				ifFalse: [
					aPrefix = 'xmlns'
						ifTrue: [self class xmlnsNamespaceURI]
						ifFalse: [aBlock value]]]