decoding
nextFromStream: aStream
	^ self
		codePointFromFirstByte: (aStream basicNext ifNil: [^ nil]) asciiValue
		secondByte: (aStream basicNext ifNil: [self errorInvalidCharacter]) asciiValue
		thirdByte: (aStream basicNext ifNil: [self errorInvalidCharacter]) asciiValue
		fourthByte: (aStream basicNext ifNil: [self errorInvalidCharacter]) asciiValue