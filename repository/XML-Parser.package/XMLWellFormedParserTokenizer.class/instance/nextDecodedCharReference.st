tokenizing
nextDecodedCharReference
	| codePoint |

	"skip #"
	streamReader next.
	(codePoint := streamReader nextInteger)
		ifNil: [self errorExpected: 'integer'].
	self expectNext: $;.

	^ (self characterFromCodePoint: codePoint)
		ifNil: [self errorInvalidCodePoint: codePoint].