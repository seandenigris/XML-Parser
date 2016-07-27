tokenizing - expecting
expectQuote
	| nextChar |

	((nextChar := streamReader next) == $"
		or: [nextChar == $'])
		ifFalse: [self errorExpectedQuoteButGot: nextChar].
	^ nextChar.