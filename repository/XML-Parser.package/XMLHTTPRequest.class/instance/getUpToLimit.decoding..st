retrieving
getUpToLimit: aMaxSize decoding: aBoolean
	^ self
		getResponseUpToLimit: aMaxSize
		decoding: aBoolean
		timeout: self defaultTimeout
		onError: [:error |
			(self isMaxSizeException: error)
				ifTrue: [XMLLimitException signal: 'HTTP reponse limit exceeded']
				ifFalse: [XMLHTTPException signalMessageFrom: error]]