tokenizing
nextAttributeValue
	| quote nextChar |

	((quote := streamReader next) == $"
		or: [quote == $'])
		ifFalse: [self errorExpectedAttributeValueStartButGot: quote].
	
	context enterLiteralValue.
	writeStream reset.
	[(nextChar := streamReader next) == quote
		or: [nextChar == $<
			or: [nextChar == nil]]]
		whileFalse: [
			nextChar == $&
				ifTrue: [
					"char refs should be ignored by whitespace normalization"
					self nextGeneralEntityOrCharacterReferenceOnWriteStream]
				ifFalse: [
					nextChar isXMLSeparator
						ifTrue: [nextChar := NormalizedSpace]
						ifFalse: [
							nextChar isXMLChar
								ifFalse: [self errorNonCharInAttributeValue: nextChar]].
					writeStream nextPut: nextChar]].
	context exitLiteralValue.

	nextChar == quote
		ifFalse: [
			self
				errorExpectedAttributeValueEnd: quote
				butGot: nextChar].

	^ writeStream contents.