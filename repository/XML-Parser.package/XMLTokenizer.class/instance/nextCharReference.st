tokenizing
nextCharReference
	| base charValue |

	streamReader next == $#
		ifFalse: [self errorExpected: 'character reference'].
	(charValue := streamReader nextInteger) > 0
		ifFalse: [self errorExpected: 'integral character value'].
	self expectNext: $;.
	^ Unicode value: charValue.