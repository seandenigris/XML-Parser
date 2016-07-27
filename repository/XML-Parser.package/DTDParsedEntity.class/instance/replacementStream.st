accessing
replacementStream
	self isExternal
		ifTrue: [^ XMLDecodingReadStreamAdapter on: self replacement readStream]
		ifFalse: [^ self replacement readStream]