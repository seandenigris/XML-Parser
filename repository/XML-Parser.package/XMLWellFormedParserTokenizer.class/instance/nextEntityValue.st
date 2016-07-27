tokenizing - dtd
nextEntityValue
	| quote value nextChar |

	quote := streamReader next.
	context enterLiteralValue.
	writeStream reset.
	[(nextChar := streamReader peek) == quote
		or: [nextChar == nil]]
		whileFalse: [
			streamReader next == $&
				ifTrue: [
					writeStream nextPut: 
						(streamReader peek == $#
							ifTrue: [self nextDecodedCharReference]
							ifFalse: [$&])]
				ifFalse: [
					nextChar == $%
						ifTrue: [self nextParameterEntityReference]
						ifFalse: [writeStream nextPut: nextChar]]].
	value := writeStream contents.
	context exitLiteralValue.
	self expectNext: quote.

	^ value.