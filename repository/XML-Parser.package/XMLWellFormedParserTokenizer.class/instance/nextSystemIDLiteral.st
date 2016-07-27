tokenizing - dtd
nextSystemIDLiteral
	| quote nextChar |

	((quote := streamReader next) == $"
		or: [quote == $'])
		ifFalse: [self errorExpectedSystemIDLiteralStartButGot: quote].

	writeStream reset.
	[(nextChar := streamReader next) == nil
		or: [nextChar == quote]]
		whileFalse: [
			nextChar isXMLChar
				ifFalse: [self errorNonCharInSystemID: nextChar].
			writeStream nextPut: nextChar].

	nextChar == quote
		ifFalse: [
			self
				errorExpectedSystemIDLiteralEnd: quote
				butGot: nextChar].

	^ writeStream contents.