resolving
resolvePrefix: aPrefix ifUnresolvable: aBlock
	^ self
		prefixMappingAt: aPrefix
		ifAbsent: [
			aPrefix = 'xml'
				ifTrue: [self class xmlNamespaceURI]
				ifFalse: [
					aPrefix = 'xmlns'
						ifTrue: [self class xmlnsNamespaceURI]
						ifFalse: [aBlock value]]]