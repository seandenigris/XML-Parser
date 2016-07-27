streaming
pushBack: aString
	aString size > 0
		ifTrue: [self pushStream: (ReadStream on: aString)]