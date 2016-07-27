private
validateAndResolvePrefix: aPrefix
	^ self
		prefixMappingsAt: aPrefix
		ifAbsent: [
			aPrefix = 'xml'
				ifTrue: [self class xmlNamespaceURI]
				ifFalse: [					
					(aPrefix = 'xmlns'
						ifTrue: [self errorCannotUseXmlnsPrefix]
						ifFalse: [self errorUnmappedPrefix: aPrefix])]]