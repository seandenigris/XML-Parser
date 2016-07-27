tokenizing - expecting
expectUpToAll: aString
	| value isTerminated |

	"upToAll: can't distinguish between a missing terminator or terminator at the end of a string"
	isTerminated := false.
	value := streamWriter writeWith: [:writeStream |
		[streamReader atEnd
			or: [(isTerminated := streamReader nextMatchAll: aString)]]
			whileFalse: [writeStream nextPut: streamReader next].

		writeStream contents].

	isTerminated
		ifFalse: [self errorExpected: 'terminating ', aString].

	^ value.
