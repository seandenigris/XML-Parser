tokenizing
checkAndExpandReference: parsingContext
	| referenceString nextChar |
	nextChar := streamReader peek.
	self isValidating
		ifFalse: [^nil].
	nextChar == $&
		ifTrue: [
			streamReader next.
			streamReader peek == $#
				ifTrue: [^ streamReader pushStream: (ReadStream on: self nextCharReference asString)].
			referenceString := self nextLiteral.
			streamReader next == $;
				ifFalse: [self errorExpected: ';'].
			self handleEntity: referenceString in: parsingContext ]
		ifFalse: [
			((nextChar == $%
				and: [self parsingMarkup])
				and: [parsingContext == #entityValue])
				ifTrue: [
					streamReader skipSeparators.
					referenceString := self nextLiteral.
					self handleEntity: referenceString in: parsingContext]].

	streamReader atEnd ifTrue: [self errorExpected: 'Character expected.'].
	^nextChar