decoding
nextFromStream: aStream
	| codePoint |

	codePoint :=
		self
			codePointFromFirstByte:
				(aStream basicNext ifNil: [^ nil]) asciiValue
			secondByte:
				(aStream basicNext ifNil: [self errorInvalidCharacter]) asciiValue.

	(codePoint < 16rD800 or: [codePoint > 16rDBFF])
		ifTrue: [^ self characterForValue: codePoint]
		ifFalse: [
			^ self
				surrogatePairFromStream: aStream
				withHighSurrogate: codePoint]