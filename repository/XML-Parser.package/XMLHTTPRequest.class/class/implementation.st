accessing
implementation
	^ self == XMLHTTPRequest
		ifTrue: [self defaultImplementation]
		ifFalse: [self]