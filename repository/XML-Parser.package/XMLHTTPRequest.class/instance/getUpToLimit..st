requesting
getUpToLimit: aMaxSize
	^ self
		getResponseUpToLimit: aMaxSize
		withTimeout: self defaultTimeout
		onError: [:error |
			(error isKindOf: XMLLimitException)
				ifTrue: [XMLLimitException signal: 'HTTP reponse limit exceeded']
				ifFalse: [XMLHTTPException signal: error messageText]]