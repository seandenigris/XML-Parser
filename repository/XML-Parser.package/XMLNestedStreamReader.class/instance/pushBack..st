positioning
pushBack: aString
	aString size > 1
		ifTrue: [^ self pushStream: (ReadStream on: aString)].
	aString size = 1
		ifTrue: [self pushBackCharacter: (aString at: 1)]