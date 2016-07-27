tokenizing
nextAttributeValue
	| quote nextChar |

	((quote := streamReader next) == $"
		or: [quote == $'])
		ifFalse: [
			quote == $&
				ifTrue: [^ self nextUnparsedEntityReference]
				ifFalse: [self errorExpectedAttributeValueStart]].
	
	context
		saveCurrent;
		enterLiteralValue.
	writeStream reset.
	[(nextChar := streamReader peek) == quote
		or: [nextChar == $<
			or: [nextChar == nil]]]
		whileFalse: [
			(streamReader next) == $&
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
	context resetPrevious.

	(streamReader next == quote)
		ifFalse: [self errorExpectedAttributeValueEnd].

	^ writeStream contents.