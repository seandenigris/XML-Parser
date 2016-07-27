private
validateAndResolvePrefix: aPrefix ofName: aName
	aPrefix = 'xmlns'
		ifTrue: [
			XMLNamespaceException signal:
				'Cannot use reserved "xmlns" prefix in "', aName, '"'].
	^ self
		resolvePrefix:  aPrefix
		ifUnmapped: [
			XMLNamespaceException signal:
				'Unmapped prefix "', aPrefix, '" in "', aName, '"'].