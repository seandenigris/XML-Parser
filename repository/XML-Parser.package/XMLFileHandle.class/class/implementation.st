private
implementation
	^ self == XMLFileHandle
		ifTrue: [self selectImplementation]
		ifFalse: [self]