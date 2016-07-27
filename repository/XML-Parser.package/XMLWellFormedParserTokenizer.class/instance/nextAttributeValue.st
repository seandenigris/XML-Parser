tokenizing
nextAttributeValue
	| quote nextChar |

	((quote := streamReader next) == $"
		or: [quote == $'])
		ifFalse: [self errorExpectedAttributeValueStart].
	
	context enterLiteralValue.
	writeStream reset.
	[(nextChar := streamReader next) == quote
		or: [nextChar == $<
			or: [nextChar == nil]]]
		whileFalse: [
			nextChar == $&
				ifTrue: [
					streamReader peek == $#
						ifTrue: [writeStream nextPut: self nextDecodedCharReference]
						ifFalse: [
							(nextChar := self nextGeneralEntityReference)
								ifNotNil: [writeStream nextPut: nextChar]]]
				ifFalse: [
					nextChar isSeparator
						ifTrue: [nextChar := NormalizedSpace].
					writeStream nextPut: nextChar]].
	context exitLiteralValue.

	nextChar == quote
		ifFalse: [self errorExpectedAttributeValueEnd].

	^ writeStream contents.