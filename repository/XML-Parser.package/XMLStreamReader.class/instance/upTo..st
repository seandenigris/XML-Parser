streaming
upTo: aDelimiter
	| nextChar |

	buffer reset.
	[self atEnd or: [(nextChar := self next) == aDelimiter]]
		whileFalse: [buffer nextPut: nextChar].

	^ nextChar == aDelimiter
		ifTrue: [buffer stringContents]
		ifFalse: [nil].