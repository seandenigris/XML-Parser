accessing
nextHexInteger
	| maxBaseValue value digitChar |

	maxBaseValue := SmallInteger maxVal / 16.
	value := HexDigitCharacterMap at: self peek ifAbsent: [^ 0].
	self next.
	[self atEnd not
		and: [HexDigitCharacterMap includesKey: (digitChar := self peek)]]
		whileTrue: [| baseValue digitValue |
			self next.

			value <= maxBaseValue
				ifFalse: [^ value].
			baseValue := value * 16.

			digitValue := HexDigitCharacterMap at: digitChar.
			((SmallInteger maxVal - digitValue) > baseValue)
				ifFalse: [^ value].
			value := baseValue + digitValue].
	^ value.