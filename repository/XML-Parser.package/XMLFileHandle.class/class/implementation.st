accessing
implementation
	^ self == XMLFileHandle
		ifTrue: [self defaultImplementation]
		ifFalse: [self]