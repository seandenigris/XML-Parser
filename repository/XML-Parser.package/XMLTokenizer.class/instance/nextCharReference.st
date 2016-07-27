tokenizing
nextCharReference
	| base charValue |
	streamReader next == $#
		ifFalse: [self errorExpected: 'character reference'].
	streamReader peek == $x
		ifTrue: [
			streamReader next.
			base := 16]
		ifFalse: [base := 10].

	(charValue := streamReader readNumberBase: base)
		ifNil: [self errorExpected: 'number'].
	self expectNext: $;.
	^ Unicode value: charValue.