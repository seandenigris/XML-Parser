tokenizing - dtd
nextPublicIDLiteral
	| quote nextChar |

	quote := self expectQuote.
	writeStream reset.
	[(nextChar := streamReader peek) == nil
		or: [nextChar == quote
			or: [(PubidChars includes: nextChar) not]]]
		whileFalse: [writeStream nextPut: streamReader next].
	self expectNext: quote.

	^ writeStream contents.