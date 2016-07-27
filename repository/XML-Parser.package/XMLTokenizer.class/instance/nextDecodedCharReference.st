tokenizing
nextDecodedCharReference
	| codePoint |

	"skip #"
	streamReader next.
	codePoint := streamReader nextInteger.
	self expectNext: $;.

	^ (self characterFromCodePoint: codePoint)
		ifNil: [self parseError: 'Invalid character code point ', codePoint printString].