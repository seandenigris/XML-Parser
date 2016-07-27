tokenizing - dtd
nextEntityValueDelimitedBy: aQuote
	| nextChar |

	writeStream reset.
	[(nextChar := streamReader peek) == aQuote
		or: [nextChar == nil]]
		whileFalse: [
			(streamReader next) == $&
				ifTrue: [
					writeStream nextPut: 
						(streamReader peek == $#
							ifTrue: [self nextDecodedCharReference]
							ifFalse: [nextChar])]
				ifFalse: [
					nextChar == $%
						ifTrue: [self nextParameterEntityReference]
						ifFalse: [writeStream nextPut: nextChar]]].
	^ writeStream contents.