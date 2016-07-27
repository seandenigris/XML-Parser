tokenizing
nextEntityValue
	| delimiterChar entityValueStream nextChar nextPeek referenceString entity entityValue |
	delimiterChar := streamReader next.
	(delimiterChar == $"
		or: [delimiterChar == $'])
		ifFalse: [self errorExpected: 'Entity value delimiter expected.'].

	entityValueStream := WriteStream on: (String new).
	[
	nextPeek := nextChar := streamReader peek.
	nextChar ifNil: [self errorExpected: 'Character expected.'].
	nextChar == $&
		ifTrue: [
			streamReader next.
			streamReader peek == $#
				ifTrue: [
					nextPeek := nil.
					nextChar := self nextCharReference]
				ifFalse: [
					referenceString := self nextLiteral.
					streamReader next == $;
						ifFalse: [self errorExpected: ';'].
					entity := self entity: referenceString.
					entityValue := entity valueForContext: #entityValue.
					streamReader pushStream: (ReadStream on: entityValue asString).
					nextPeek := nextChar := streamReader next]]
		ifFalse: [
			nextChar == $%
				ifTrue: [
					streamReader skipSeparators.
					referenceString := self nextLiteral.
					nextChar := self handleEntity: referenceString in: #entityValue.
					nextPeek := nextChar := streamReader next]
				ifFalse: [streamReader next]].
	nextPeek == delimiterChar]
		whileFalse: [
			nextChar ifNotNil: [entityValueStream nextPut: nextChar]].
	^entityValueStream contents