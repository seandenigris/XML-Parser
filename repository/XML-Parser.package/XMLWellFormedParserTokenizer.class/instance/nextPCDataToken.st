tokenizing
nextPCDataToken
	| isIgnorableWhitespace nextChar |

	isIgnorableWhitespace := true.
	writeStream reset.
	[(nextChar := streamReader peek) == $<
		or: [nextChar == nil]]
		whileFalse: [
			streamReader next == $&
				ifTrue: [
					(streamReader peek == $#
						ifTrue: [self nextCharacterReferenceOnWriteStream]
						ifFalse: [self nextGeneralEntityReferenceOnWriteStream])
							ifTrue: [isIgnorableWhitespace := false]]
				ifFalse: [
					isIgnorableWhitespace
						ifTrue: [isIgnorableWhitespace := nextChar isSeparator].
					writeStream nextPut: nextChar]].
	isIgnorableWhitespace
		ifTrue: [
			writeStream xmlParserAtBeginning
				ifFalse: [driver handleWhitespace: writeStream contents]]
		ifFalse: [driver handlePCData: writeStream contents].