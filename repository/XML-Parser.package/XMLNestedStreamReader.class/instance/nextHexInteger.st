accessing
nextHexInteger
	| value digitChar digitValue |

	value := HexDigitCharacterMap at: self peek ifAbsent: [^ 0].
	self next.
	[self atEnd not
		and: [HexDigitCharacterMap includesKey: (digitChar := self peek)]]
		whileTrue: [
			self next.
			value := (value * 16) + (HexDigitCharacterMap at: digitChar).
			value < SmallInteger maxVal
				ifFalse: [^ Smalltalk maxVal].].
	^ value.