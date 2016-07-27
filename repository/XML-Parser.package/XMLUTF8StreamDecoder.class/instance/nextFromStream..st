decoding
nextFromStream: aStream
	| firstChar firstByte |

	((firstChar := aStream basicNext) == nil
		or: [(firstByte := firstChar asciiValue) < 16r80]) "single byte character"
		ifTrue: [^ firstChar].

	firstByte < 16rC0 "second bit must be set"
		ifTrue: [self errorInvalidCodePoint].
	(firstByte bitAnd: 16rF0) < 16rE0 "two bytes"
		ifTrue: [
			^ self characterWithValue: 
				((firstByte bitAnd: 16r1F) bitShift: 6) +
				((aStream basicNext ifNil: [self errorInvalidCodePoint]) asciiValue bitAnd: 16r3F)].
	(firstByte bitAnd: 16rF0) = 16rE0 "three bytes"
		ifTrue: [
			^ self characterWithValue: 
				((firstByte bitAnd: 16r0F) bitShift: 12) +
				(((aStream basicNext ifNil: [self errorInvalidCodePoint]) asciiValue bitAnd: 16r3F) bitShift: 6) +
				((aStream basicNext ifNil: [self errorInvalidCodePoint]) asciiValue bitAnd: 16r3F)].
	^ self characterWithValue: "four"
		((firstByte bitAnd: 16r07) bitShift: 18) +
		(((aStream basicNext ifNil: [self errorInvalidCodePoint]) asciiValue bitAnd: 16r3F) bitShift: 12) +
		(((aStream basicNext ifNil: [self errorInvalidCodePoint]) asciiValue bitAnd: 16r3F) bitShift: 6) +
		((aStream basicNext ifNil: [self errorInvalidCodePoint]) asciiValue bitAnd: 16r3F).