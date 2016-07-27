tokenizing
nextPCData
	| resultStream nextChar referenceString entity entityValue nextPeek |
	resultStream := (String new: 10) writeStream.
	self validating
		ifFalse: [
			[self peek == $<]
				whileFalse: [resultStream nextPut: self next].
			^self handlePCData: resultStream contents].

	[
	nextPeek := nextChar := self peek.
	nextChar ifNil: [self errorExpected: 'Character expected.'].
	nextChar == $&
		ifTrue: [
			self next.
			self peek == $#
				ifTrue: [
					nextPeek := nil.
					nextChar := self nextCharReference]
				ifFalse: [
					referenceString := self nextLiteral.
					self next == $;
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
									self pushStream: (ReadStream on: entityValue asString).
									nextPeek := nextChar := self peek]]]]
		ifFalse: [nextPeek == $< ifFalse: [self next]].
	nextPeek == $<]
		whileFalse: [
			nextChar ifNotNil: [resultStream nextPut: nextChar]].
	self handlePCData: resultStream contents