resolving
resolveEntity: aUri
	^ ((self httpClient beginsWithSupportedURLProtocol: aUri)
		ifTrue: [self httpClient]
		ifFalse: [self fileClient]) get: aUri