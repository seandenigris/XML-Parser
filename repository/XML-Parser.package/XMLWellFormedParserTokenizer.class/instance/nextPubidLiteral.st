tokenizing - dtd
nextPubidLiteral
	| quote nextChar |

	quote := self expectQuote.
	writeStream reset.
	[(nextChar := streamReader peek) notNil
		and: [(PubidChars includes: nextChar)
			and: [nextChar ~~ quote]]]
		whileTrue: [writeStream nextPut: streamReader next].
	self expectNext: quote.

	^ writeStream contents.