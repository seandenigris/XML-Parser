accessing
argumentsSentWith: aSelector
	^ (self sentHandlerMessages
		detect: [:each | each selector = aSelector]
		ifNone: [^ #()]) arguments