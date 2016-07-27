private
validateAndResolvePrefix: aPrefix
	^ self prefixMappings
		at: aPrefix
		ifAbsent: [
			aPrefix = 'xml'
				ifTrue: [self class xmlNamespaceURI]
				ifFalse: [
					aPrefix isEmpty
						ifTrue: [self defaultNamespace]
						ifFalse: [
							XMLNamespaceException signal:
								((aPrefix = 'xmlns')
									ifTrue: ['Cannot use reserved "xmlns" prefix for elements or attributes']
									ifFalse: ['Unmapped namespace prefix "', aPrefix, '" in name'])]]]