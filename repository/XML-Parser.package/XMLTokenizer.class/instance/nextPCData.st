tokenizing
nextPCData
	| resultStream nextChar referenceString entity entityValue nextPeek |
	resultStream := (String new: 10) writeStream.
	self isValidating
		ifFalse: [
			[streamReader peek == $<]
				whileFalse: [resultStream nextPut: streamReader next].
			^self handlePCData: resultStream contents].

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
									nextPeek := nextChar := streamReader peek]]]]
		ifFalse: [nextPeek == $< ifFalse: [streamReader next]].
	nextPeek == $<]
		whileFalse: [
			nextChar ifNotNil: [resultStream nextPut: nextChar]].
	self handlePCData: resultStream contents