private
validateAndResolvePrefix: aPrefix
	^ self
		prefixMappingsAt: aPrefix
		ifAbsent: [
			aPrefix = 'xml'
				ifTrue: [self class xmlNamespaceURI]
				ifFalse: [
					XMLNamespaceException signal:
						(aPrefix = 'xmlns'
							ifTrue: ['Cannot use reserved "xmlns" prefix for elements or attributes']
							ifFalse: ['Unmapped namespace prefix "', aPrefix, '" in name'])]]