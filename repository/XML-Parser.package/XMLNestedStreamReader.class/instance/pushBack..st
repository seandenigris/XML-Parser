positioning
pushBack: aString
	aString size > 1
		ifTrue: [^ self pushBackStream: (ReadStream on: aString)].
	aString size = 1
		ifTrue: [self pushBackCharacter: (aString at: 1)]