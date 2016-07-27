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
					streamReader peek == $#
						ifTrue: [self nextCharacterReferenceOnWriteStream]
						ifFalse: [writeStream nextPut: $&]]
				ifFalse: [
					nextChar == $%
						ifTrue: [self nextParameterEntityReferenceOnWriteStream]
						ifFalse: [writeStream nextPut: nextChar]]].
	value := writeStream contents.
	context exitLiteralValue.
	self expectNext: quote.

	^ value.