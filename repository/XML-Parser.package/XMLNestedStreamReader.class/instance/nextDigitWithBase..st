accessing
nextDigitWithBase: aBase
	| digit |

	aBase = 16
		ifTrue: [digit := HexDigitCharacterMap at: self peek ifAbsent: [nil]]
		ifFalse: [
			digit := self peek asciiValue - $0 asciiValue.
			(digit >= 0 and: [digit <= 10])
				ifFalse: [digit := nil]].
	digit ifNotNil: [self next].

	^ digit.