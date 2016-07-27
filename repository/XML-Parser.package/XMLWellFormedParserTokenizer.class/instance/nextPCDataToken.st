tokenizing
nextPCDataToken
	| isIgnorableWhitespace nextChar |

	isIgnorableWhitespace := true.
	writeStream reset.
	[(nextChar := streamReader peek) == $<
		or: [nextChar == nil]]
		whileFalse: [
			streamReader next isXMLChar
				ifFalse: [self errorNonCharInPCData: nextChar].
			nextChar == $&
				ifTrue: [
					self nextGeneralEntityOrCharacterReferenceOnWriteStream
						ifTrue: [isIgnorableWhitespace := false]]
				ifFalse: [
					nextChar == $]
						ifTrue: [
							(streamReader nextMatch: $] followedBy: $>)
								ifTrue: [self errorUnexpectedCDataTerminator]].
					isIgnorableWhitespace
						ifTrue: [isIgnorableWhitespace := nextChar isXMLSeparator].
					writeStream nextPut: nextChar]].
	isIgnorableWhitespace
		ifTrue: [
			writeStream position > 0
				ifTrue: [driver handleWhitespace: writeStream contents]]
		ifFalse: [driver handlePCData: writeStream contents].