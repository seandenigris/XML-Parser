tokenizing
nextCDataSection
	| wasTerminated |

	self expectNextAll: '[CDATA['.
	writeStream reset.
	wasTerminated := false.
	[streamReader atEnd
		or: [wasTerminated := streamReader nextMatchAll: ']]>']]
		whileFalse: [| nextChar |
			(nextChar := streamReader next) isXMLChar
				ifFalse: [self errorNonCharInPCData: nextChar].
			writeStream nextPut: nextChar].
	wasTerminated
		ifFalse: [self errorExpectedCDataSectionTerminator].
	driver handleCData: writeStream contents.