streaming
skipUpTo: aDelimiter
	| nextChar |

	[self atEnd or: [(nextChar := self next) == aDelimiter]] whileFalse.
	^ nextChar == aDelimiter.