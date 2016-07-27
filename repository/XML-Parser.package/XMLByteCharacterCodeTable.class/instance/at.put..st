accessing
at: aCharacterCode put: aValue
	| i |

	i := aCharacterCode + 1.
	(codeTable at: i)
		ifNil: [self addCodeIndex: aCharacterCode].

	^ codeTable at: i put: aValue.