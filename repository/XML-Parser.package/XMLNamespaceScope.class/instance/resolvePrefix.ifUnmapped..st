accessing
resolvePrefix: aPrefix ifUnmapped: aBlock
	(aPrefix isNil or: [aPrefix isEmpty])
		ifTrue: [^ self defaultNamespace].

	^ self prefixMappings
		at: aPrefix
		ifAbsent: [
			aPrefix = 'xml'
				ifTrue: [self xmlNamespaceURI]
				ifFalse: [
					aPrefix = 'xmlns'
						ifTrue: [self xmlnsNamespaceURI]
						ifFalse: [aBlock value]]]