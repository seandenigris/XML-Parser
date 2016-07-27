tokenizing - dtd
nextEntityValue
	| quote nextChar |

	quote := streamReader next.

	context enterLiteralValue.
	writeStream reset.
	[(nextChar := streamReader next) == quote
		or: [nextChar == nil]]
		whileFalse: [
			nextChar == $&
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
						ifFalse: [
							nextChar isXMLChar
								ifFalse: [self errorNonCharInEntityValue: nextChar].
							writeStream nextPut: nextChar]]].
	context exitLiteralValue.

	nextChar == quote
		ifFalse: [
			self
				errorExpectedEntityValueEnd: quote
				butGot: nextChar].

	^ writeStream contents.