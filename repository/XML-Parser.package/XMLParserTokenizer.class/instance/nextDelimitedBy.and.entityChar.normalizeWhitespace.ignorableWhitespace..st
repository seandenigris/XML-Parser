tokenizing
nextDelimitedBy: aDelimiter and: aSecondDelimiter entityChar: anEntityStartChar normalizeWhitespace: shouldNormalize ignorableWhitespace: shouldSkip
	| isIgnorableWhitespace nextChar pcData |

	isIgnorableWhitespace := true.
	pcData := ''.
	streamWriter writeWith: [:writeStream |
		"separate arguments for delimiters are used instead of a collection for performance"
		[(nextChar := streamReader peek) isNil
			or: [nextChar == aDelimiter
				or: [nextChar == aSecondDelimiter]]]
			whileFalse: [
				(streamReader next) == $&
					ifTrue: [
						streamReader peek == $#
							ifTrue: [
								writeStream nextPut: self nextDecodedCharReference.
								isIgnorableWhitespace := false]
							ifFalse: [
								anEntityStartChar == $&
									ifTrue: [
										(nextChar := self nextGeneralEntityReference)
											ifNotNil: [
												writeStream nextPut: nextChar.
												isIgnorableWhitespace := false]]
									ifFalse: [
										writeStream nextPut: $&.
										isIgnorableWhitespace := false]]]
					ifFalse: [
						nextChar == anEntityStartChar
							ifTrue: [self nextParameterEntityReference]
							ifFalse: [
								nextChar isSeparator
									ifTrue: [
										shouldNormalize
											ifTrue: [nextChar := Character space]]
									ifFalse: [isIgnorableWhitespace := false].
								writeStream nextPut: nextChar]]].
		isIgnorableWhitespace & shouldSkip
			ifTrue: [
				writeStream position > 0
					ifTrue: [driver handleWhitespace: writeStream contents]]
			ifFalse: [pcData := writeStream contents]].
	^ pcData.