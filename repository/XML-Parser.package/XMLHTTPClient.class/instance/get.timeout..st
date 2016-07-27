retrieving
get: aUrl timeout: aTimeout
	^ self
		get: aUrl
		timeout: aTimeout
		onError: [:error | XMLHTTPException signal: error messageText]