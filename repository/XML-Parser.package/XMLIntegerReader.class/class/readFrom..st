instance creation
readFrom: aStream
	^ (aStream atEnd not
		and: [aStream peek == $x])
		ifTrue: [
			aStream next.
			self readFrom: aStream withBase: 16]
		ifFalse: [self readFrom: aStream withBase: 10]