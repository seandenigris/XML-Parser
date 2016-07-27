tokenizing
nextAttributeValueDelimitedBy: aQuote
	| nextChar |

	writeStream reset.
	[(nextChar := streamReader peek) == nil
		or: [nextChar == aQuote
			or: [nextChar == $<]]]
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
						ifTrue: [nextChar := normalizedSpaceChar].
					writeStream nextPut: nextChar]].
	^ writeStream contents.