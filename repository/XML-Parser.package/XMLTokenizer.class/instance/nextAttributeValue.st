tokenizing
nextAttributeValue
	| delimiterChar attributeValueStream nextChar nextPeek referenceString entity entityValue |
	delimiterChar := streamReader next.
	(delimiterChar == $"
		or: [delimiterChar == $'])
		ifFalse: [self errorExpected: 'Attribute value delimiter expected.'].
	attributeValueStream := attributeBuffer reset.
	[
	nextPeek := nextChar := streamReader next.
	nextChar ifNil: [self errorExpected: 'Character expected.'].
	nextChar == $&
		ifTrue: [
			streamReader peek == $#
				ifTrue: [
					nextPeek := nil.
					nextChar := self nextCharReference]
				ifFalse: [
					referenceString := self nextLiteral.
					streamReader next == $;
						ifFalse: [self errorExpected: ';'].
					entity := self entity: referenceString.
					entityValue := entity valueForContext: #content.
					(self class isCharEscape: entityValue)
						ifTrue: [
							nextPeek := nil.
							nextChar := entityValue first]
						ifFalse: [
							entityValue := entityValue asString.
							entityValue isEmpty
								ifTrue: [nextPeek := nextChar := nil]
								ifFalse: [
									streamReader pushStream: (ReadStream on: entityValue asString).
									nextPeek := nextChar := streamReader next]]]].
	nextPeek == delimiterChar]
		whileFalse: [
			nextChar ifNotNil: [attributeValueStream nextPut: nextChar]].
	^self fastStreamStringContents: attributeValueStream.