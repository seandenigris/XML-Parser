private
surrogatePairFromStream: aStream withHighSurrogate: aHighSurrogate
	| lowSurrogate |

	lowSurrogate :=
		self
			codePointFromFirstByte:
				(aStream basicNext ifNil: [self errorInvalidCharacter]) asciiValue
			secondByte:
				(aStream basicNext ifNil: [self errorInvalidCharacter]) asciiValue.

	^ self characterForValue:
		((aHighSurrogate bitAnd: 16r3FF) bitShift: 10) +
		(lowSurrogate bitAnd: 16r3FF) +
		16r10000.