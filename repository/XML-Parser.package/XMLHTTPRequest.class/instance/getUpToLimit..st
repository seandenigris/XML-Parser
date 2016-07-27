requesting
getUpToLimit: aMaxSize
	^ self
		getResponseUpToLimit: aMaxSize
		withTimeout: self defaultTimeout
		onError: [:error |
			(error isKindOf: XMLLimitException)
				ifTrue: [
					error
						messageText: 'HTTP reponse limit exceeded';
						pass]
				ifFalse: [XMLHTTPException signalMessageFrom: error]]