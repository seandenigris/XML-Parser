private
clientForURIs: aUriColleciton
	^ (aUriColleciton anySatisfy: [:each |
		self httpClient beginsWithSupportedURLProtocol: each])
		ifTrue: [self httpClient]
		ifFalse: [self fileClient]