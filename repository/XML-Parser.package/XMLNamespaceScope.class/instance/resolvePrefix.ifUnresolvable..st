resolving
resolvePrefix: aPrefix ifUnresolvable: aBlock
	"resolve namespace from prefix"
	^ self
		prefixMappingAt: aPrefix
		ifAbsent: [
			aPrefix = 'xml'
				ifTrue: [self xmlNamespaceURI]
				ifFalse: [
					aPrefix = 'xmlns'
						ifTrue: [self xmlnsNamespaceURI]
						ifFalse: [aBlock value]]]