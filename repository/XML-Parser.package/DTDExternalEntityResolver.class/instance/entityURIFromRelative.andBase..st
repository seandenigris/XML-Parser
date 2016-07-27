accessing
entityURIFromRelative: aRelativeUri andBase: aBaseUri
	^ ((self httpClient beginsWithSupportedURLProtocol: aRelativeUri)
		ifTrue: [self httpClient]
		ifFalse: [self fileClient])
			combineRelative: aRelativeUri
			withBase: aBaseUri