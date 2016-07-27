tokenizing
nextPCDataToken
	| isWhitespace nextChar |

	isWhitespace := true.
	writeStream reset.
	[(nextChar := streamReader peek) == $<
		or: [nextChar == nil]]
		whileFalse: [
			streamReader next == $&
				ifTrue: [
					self nextGeneralEntityOrCharacterReferenceOnWriteStream
						ifNotNil: [:writtenChar |
							isWhitespace
								ifTrue: [isWhitespace := writtenChar isXMLSeparator]]]
				ifFalse: [
					nextChar == $]
						ifTrue: [
							(streamReader nextMatch: $] followedBy: $>)
								ifTrue: [self errorUnexpectedCDataTerminator].
							isWhitespace := false]
						ifFalse: [
							(isWhitespace
								and: [isWhitespace := nextChar isXMLSeparator])
								ifFalse: [
									nextChar isXMLChar
										ifFalse: [self errorNonCharInPCData: nextChar]]].
					writeStream nextPut: nextChar]].
	isWhitespace
		ifTrue: [
			writeStream position > 0
				ifTrue: [driver handleWhitespace: writeStream contents]]
		ifFalse: [driver handlePCData: writeStream contents].