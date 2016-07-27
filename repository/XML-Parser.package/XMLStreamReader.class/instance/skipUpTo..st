streaming
skipUpTo: delimiter
	| nextChar |

	[self atEnd or: [(nextChar := self next) == delimiter]] whileFalse.
	^ nextChar == delimiter.