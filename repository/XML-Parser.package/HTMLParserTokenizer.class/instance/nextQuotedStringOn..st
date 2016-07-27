tokenizing
nextQuotedStringOn: aWriteStream
	| quote |

	quote := streamReader next.
	aWriteStream nextPut: quote.
	[streamReader atEnd or: [streamReader peek == quote]]
		whileFalse: [aWriteStream nextPut: streamReader next].
	streamReader next.
	aWriteStream nextPut: quote.