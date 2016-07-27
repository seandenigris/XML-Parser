removing
removeAt: aCharacterCode ifAbsent: aBlock
	| value i |

	i := aCharacterCode + 1.
	(value := codeTable at: i)
		ifNil: [^ aBlock value].
	codeTable at: i put: nil.
	self removeCodeIndex: aCharacterCode.
	^ value.