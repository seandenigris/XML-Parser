instance creation
onStreamIfBinary: aStream
	(aStream atEnd
		or: [aStream peek isCharacter])
		ifTrue: [^ aStream]
		ifFalse: [^ self on: aStream]