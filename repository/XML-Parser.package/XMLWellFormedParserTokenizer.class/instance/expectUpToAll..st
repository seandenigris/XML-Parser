tokenizing - expecting
expectUpToAll: aString
	| isTerminated |

	"upToAll: can't distinguish between a missing terminator or terminator at the end of a string"
	isTerminated := false.
	writeStream reset.
	[streamReader atEnd
		or: [(isTerminated := streamReader nextMatchAll: aString)]]
		whileFalse: [writeStream nextPut: streamReader next].

	isTerminated
		ifFalse: [self errorExpectedLiteral: aString].

	^ writeStream contents.