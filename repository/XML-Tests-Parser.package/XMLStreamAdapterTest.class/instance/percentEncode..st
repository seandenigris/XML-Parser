converting
percentEncode: aCharacter
	| hexString |

	(hexString := aCharacter asciiValue printStringHex asUppercase) size > 1
		ifTrue: [^ '%', hexString]
		ifFalse: [^ '%0', hexString]