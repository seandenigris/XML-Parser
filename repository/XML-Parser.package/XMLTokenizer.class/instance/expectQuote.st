tokenizing
expectQuote
	| nextChar expected |

	(((nextChar := streamReader next) == $")
		or: [nextChar == $'])
			ifFalse: [
				self
					errorExpected: 'quote character delimiter'
					butGot: nextChar].
	^ nextChar.