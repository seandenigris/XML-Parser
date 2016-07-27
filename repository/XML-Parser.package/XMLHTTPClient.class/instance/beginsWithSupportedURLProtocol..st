testing
beginsWithSupportedURLProtocol: aUrl
	^ self supportedURLProtocols anySatisfy: [:each |
		aUrl asLowercase beginsWith: each, '://']