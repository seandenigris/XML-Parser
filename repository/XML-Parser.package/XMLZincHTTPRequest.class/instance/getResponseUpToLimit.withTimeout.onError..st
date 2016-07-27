private
getResponseUpToLimit: aMaxSize withTimeout: aTimeout onError: aBlock
	^ [(Smalltalk at: #ZnMaximumEntitySize)
		value: aMaxSize
		during: [
			((Smalltalk at: #ZnClient) new
				timeout: aTimeout;
				ifFail: [:error |
					(error isKindOf: (Smalltalk at: #ZnEntityTooLarge))
						ifTrue: [error resignalAs: XMLLimitException]
						ifFalse: [error pass]];
				url: url;
				get) readStream]]
		on: Error
		do: aBlock