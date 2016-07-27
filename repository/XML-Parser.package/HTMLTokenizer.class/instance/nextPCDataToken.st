tokenizing
nextPCDataToken
	| isIgnorableWhitespace nextChar pcData |

	isIgnorableWhitespace := true.
	pcData := ''.
	streamWriter writeWith: [:writeStream |
		[(nextChar := streamReader peek) isNil
			or: [nextChar == $<]]
			whileFalse: [
				streamReader next.
				nextChar == $&
					ifTrue: [
						(streamReader atEnd not and: [streamReader peek isSeparator])
							ifTrue: [
								writeStream nextPut: $&.
								isIgnorableWhitespace := false]
							ifFalse: [
								streamReader peek == $#
									ifTrue: [
										writeStream nextPut: self nextDecodedCharReference.
										isIgnorableWhitespace := false]
									ifFalse: [
										(nextChar := self nextGeneralEntityReference)
											ifNotNil: [writeStream nextPut: nextChar]]]]
					ifFalse: [
						nextChar isSeparator
							ifFalse: [isIgnorableWhitespace := false].
						writeStream nextPut: nextChar]].
		isIgnorableWhitespace
			ifTrue: [
				writeStream position > 0
					ifTrue: [driver handleWhitespace: writeStream contents]]
			ifFalse: [pcData :=  writeStream contents]].
	^ pcData.