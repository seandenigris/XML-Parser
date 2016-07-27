accessing
nextPutAll: aString
	aString size > 0
		ifTrue: [
			self addSpaceFor: aString first.
			stream nextPutAll: aString.
			lastChar := aString last]