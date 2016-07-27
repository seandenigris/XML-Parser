tokenizing
nextEntityValue
	| delimiterChar entityValueStream nextChar nextPeek referenceString entity entityValue |
	delimiterChar := self expectQuote.
	entityValueStream := WriteStream on: (String new: 32).
	[
	self expectMore.
	nextPeek := nextChar := streamReader peek.
	nextChar == $&
		ifTrue: [
			streamReader next.
			streamReader peek == $#
				ifTrue: [
					nextPeek := nil.
					nextChar := self nextCharReference]
				ifFalse: [
					referenceString := self nextLiteral.
					self expectNext: $;.
					entity := self entity: referenceString.
					entityValue := entity valueForContext: #entityValue.
					streamReader pushStream: (ReadStream on: entityValue asString).
					nextPeek := nextChar := streamReader next]]
		ifFalse: [
			nextChar == $%
				ifTrue: [
					streamReader skipSeparators.
					referenceString := self nextLiteral.
					nextChar := self replaceEntity: referenceString in: #entityValue.
					nextPeek := nextChar := streamReader next]
				ifFalse: [streamReader next]].
	nextPeek == delimiterChar]
		whileFalse: [
			nextChar ifNotNil: [entityValueStream nextPut: nextChar]].
	^ entityValueStream contents.