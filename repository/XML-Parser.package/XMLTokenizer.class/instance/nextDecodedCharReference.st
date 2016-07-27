tokenizing
nextDecodedCharReference
	| charValue |

	"skip #"
	streamReader next.
	(charValue := streamReader nextInteger) > 0
		ifFalse: [self errorExpected: 'integral character value'].
	self expectNext: $;.
	^ Unicode value: charValue.