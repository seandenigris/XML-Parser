private
implementation
	^ self == XMLHTTPRequest
		ifTrue: [self selectImplementation]
		ifFalse: [self]