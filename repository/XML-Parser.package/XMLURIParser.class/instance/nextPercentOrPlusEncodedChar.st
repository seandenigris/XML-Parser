private
nextPercentOrPlusEncodedChar
	| nextChar |

	(nextChar := self next) == $%
		ifTrue: [^ ((self nextIntegerWithBase: 16 upTo: 2) ifNil: [$%]) asCharacter]
		ifFalse: [
			nextChar == $+
				ifTrue: [^ Character space]
				ifFalse: [^ nextChar]]