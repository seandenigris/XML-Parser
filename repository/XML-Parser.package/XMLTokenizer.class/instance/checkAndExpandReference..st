tokenizing
checkAndExpandReference: parsingContext
	| referenceString nextChar |
	nextChar := self peek.
	self validating
		ifFalse: [^nil].
	nextChar == $&
		ifTrue: [
			self next.
			self peek == $#
				ifTrue: [^self pushStream: (ReadStream on: self nextCharReference asString)].
			referenceString := self nextLiteral.
			self next == $;
				ifFalse: [self errorExpected: ';'].
			self handleEntity: referenceString in: parsingContext ]
		ifFalse: [
			((nextChar == $%
				and: [self parsingMarkup])
				and: [parsingContext == #entityValue])
				ifTrue: [
					self skipSeparators.
					referenceString := self nextLiteral.
					self handleEntity: referenceString in: parsingContext]].

	self atEnd ifTrue: [self errorExpected: 'Character expected.'].
	^nextChar