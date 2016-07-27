retrieving
getUpToLimit: aMaxSize decoding: aBoolean
	^ [self
			basicGetUpToLimit: aMaxSize
			decoding: aBoolean]
			on: Error
			do: [:error |
				(self isMaxSizeException: error)
					ifTrue: [XMLLimitException signal: 'HTTP reponse limit exceeded']
					ifFalse: [XMLHTTPException signalMessageFrom: error]]