tokenizing
nextCharReference
	| base charValue |
	self next == $#
		ifFalse: [self errorExpected: 'character reference'].
	base := self peek == $x
		ifTrue: [
			self next.
			16]
		ifFalse: [10].

	charValue := [self readNumberBase: base] on: Error do: [:ex | self errorExpected: 'Number.'].
	(self next) == $;
		ifFalse: [self errorExpected: '";"'].
	^Unicode value: charValue