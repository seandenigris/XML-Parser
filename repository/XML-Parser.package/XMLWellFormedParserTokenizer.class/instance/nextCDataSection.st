tokenizing
nextCDataSection
	| wasTerminated nextChar |

	self expectNextAll: '[CDATA['.
	writeStream reset.
	wasTerminated := false.
	[streamReader atEnd
		or: [(nextChar := streamReader next) == $]
			and: [wasTerminated := streamReader nextMatch: $] followedBy: $>]]]
		whileFalse: [
			nextChar isXMLChar
				ifFalse: [self errorNonCharInCDataSection: nextChar].
			writeStream nextPut: nextChar].
	wasTerminated
		ifFalse: [self errorExpectedCDataSectionTerminator].
	driver handleCData: writeStream contents.