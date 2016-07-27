errors
errorInvalidCharacterReferenceCodePoint: aCodePoint
	self parseError:
		'Invalid character reference to code point U+', aCodePoint printStringHex