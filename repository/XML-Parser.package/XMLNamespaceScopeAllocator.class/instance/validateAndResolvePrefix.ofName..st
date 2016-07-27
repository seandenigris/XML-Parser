validation
validateAndResolvePrefix: aPrefix ofName: anElementName
	^ self currentScope
		validateAndResolvePrefix: aPrefix
		ofName: anElementName