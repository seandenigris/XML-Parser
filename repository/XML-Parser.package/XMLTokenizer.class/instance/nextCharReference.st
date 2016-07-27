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

	charValue := [streamReader readNumberBase: base]
		on: Error
		do: [:ex | self errorExpected: 'Number.'].
	(streamReader next) == $;
		ifFalse: [self errorExpected: '";"'].
	^ Unicode value: charValue.