tokenizing
expectUpToAll: aTerminator
	| value isTerminated |

	"upToAll: can't distinguish between a missing terminator or terminator at the end of a string"
	isTerminated := false.
	value := streamWriter writeWith: [:writeStream |
		[streamReader atEnd
			or: [(isTerminated := streamReader nextMatchAll: aTerminator)]]
			whileFalse: [writeStream nextPut: streamReader next].
		writeStream contents].
	isTerminated
		ifFalse: [self errorExpected: 'terminating ', aTerminator asString].

	^ value.
