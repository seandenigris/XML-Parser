tokenizing
nextAttributeValueDelimitedBy: aQuote
	| nextChar |

	writeStream reset.
	[(nextChar := streamReader peek) == nil
		or: [nextChar == aQuote]]
		whileFalse: [
			(streamReader next) == $&
				ifTrue: [
					streamReader peek == $#
						ifTrue: [writeStream nextPut: self nextDecodedCharReference]
						ifFalse: [
							(nextChar := self nextGeneralEntityReference)
								ifNotNil: [writeStream nextPut: nextChar]]]
				ifFalse: [writeStream nextPut: nextChar]].
	^ writeStream contents.