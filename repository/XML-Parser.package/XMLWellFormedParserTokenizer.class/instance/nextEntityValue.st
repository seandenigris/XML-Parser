tokenizing - dtd
nextEntityValue
	| quote nextChar |

	quote := streamReader next.
	context enterLiteralValue.
	writeStream reset.
	[(nextChar := streamReader peek) == quote
		or: [nextChar == nil]]
		whileFalse: [
			streamReader next == $&
				ifTrue: [
					streamReader peek == $#
						ifTrue: [
							"character refs are replaced in entity values"
							self nextCharacterReferenceOnWriteStream]
						ifFalse: [
							"general entity refs aren't replaced but must be complete"
							writeStream nextPut: $&.
							self nextNameOnWriteStream.
							writeStream nextPut: (self expectNext: $;)]]
				ifFalse: [
					nextChar == $%
						ifTrue: [
							self isInExternalSubsetOrExternallyDefinedEntity
								ifFalse: [
									self errorInternalDeclarationParameterEntityReference].
							self nextParameterEntityReferenceOnWriteStream]
						ifFalse: [writeStream nextPut: nextChar]]].
	context exitLiteralValue.
	self expectNext: quote.

	^ writeStream contents.