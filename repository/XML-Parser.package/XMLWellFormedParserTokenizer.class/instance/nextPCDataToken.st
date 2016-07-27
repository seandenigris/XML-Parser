tokenizing
nextPCDataToken
	| isIgnorableWhitespace nextChar |

	isIgnorableWhitespace := true.
	writeStream reset.
	[(nextChar := streamReader peek) == $<
		or: [nextChar == nil]]
		whileFalse: [
			(streamReader next) == $&
				ifTrue: [
					(nextChar :=
						streamReader peek == $#
							ifTrue: [self nextDecodedCharReference]
							ifFalse: [self nextGeneralEntityReference])
						ifNotNil: [
							writeStream nextPut: nextChar.
							isIgnorableWhitespace := false]]
				ifFalse: [
					isIgnorableWhitespace
						ifTrue: [isIgnorableWhitespace := nextChar isSeparator].
					writeStream nextPut: nextChar]].
	isIgnorableWhitespace
		ifTrue: [
			writeStream position > 0
				ifTrue: [driver handleWhitespace: writeStream contents]]
		ifFalse: [driver handlePCData: writeStream contents].