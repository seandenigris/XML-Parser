tokenizing dtd
nextPubidLiteral
	| quote fpi nextChar |

	quote := self expectQuote.
	fpi := streamWriter writeWith: [:writeStream |
		[(nextChar := streamReader peek) notNil
			and: [(PubidChars includes: nextChar)
				and: [nextChar ~~ quote]]]
			whileTrue: [writeStream nextPut: streamReader next].
		writeStream contents].
	self expectNext: quote.

	^ fpi.