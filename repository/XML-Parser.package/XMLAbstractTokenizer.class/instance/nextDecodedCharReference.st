tokenizing
nextDecodedCharReference
	| codePoint |

	"skip #"
	streamReader next.
	codePoint := streamReader nextInteger.
	self expectNext: $;.

	^ self characterFromCodePoint: codePoint.