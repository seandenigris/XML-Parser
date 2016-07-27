tokenizing
checkAndExpandReference: parsingContext
	| referenceString nextChar |
	nextChar := streamReader peek.
	driver isValidating
		ifFalse: [^ nil].

	nextChar == $&
		ifTrue: [
			streamReader next.
			streamReader peek == $#
				ifTrue: [^ streamReader pushStream: (ReadStream on: self nextCharReference asString)].
			referenceString := self nextLiteral.
			self expectNext: $;.
			self replaceEntity: referenceString in: parsingContext ]
		ifFalse: [
			((nextChar == $%
				and: [self isParsingMarkup])
				and: [parsingContext == #entityValue])
				ifTrue: [
					streamReader skipSeparators.
					referenceString := self nextLiteral.
					self replaceEntity: referenceString in: parsingContext]].

	self expectMore.
	^ nextChar.