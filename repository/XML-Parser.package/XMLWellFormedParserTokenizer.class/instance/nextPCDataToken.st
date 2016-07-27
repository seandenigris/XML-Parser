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
					(streamReader peek == $#
						ifTrue: [self nextCharacterReferenceOnWriteStream]
						ifFalse: [self nextGeneralEntityReferenceOnWriteStream])
							ifTrue: [isIgnorableWhitespace := false]]
				ifFalse: [
					(nextChar == $]
						and: [streamReader peek == $]])
						ifTrue: [
							streamReader next.
							streamReader peek == $>
								ifTrue: [self errorUnexpectedCDataTerminatorInPCData]
								ifFalse: [streamReader pushBackCharacter: $]]].
					isIgnorableWhitespace
						ifTrue: [isIgnorableWhitespace := nextChar isXMLSeparator].
					writeStream nextPut: nextChar]].
	isIgnorableWhitespace
		ifTrue: [
			writeStream position > 0
				ifTrue: [driver handleWhitespace: writeStream contents]]
		ifFalse: [driver handlePCData: writeStream contents].