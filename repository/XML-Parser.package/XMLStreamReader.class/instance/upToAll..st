streaming
upToAll: aDelimitingString
	"Answer a subcollection from the current access position to the occurrence
	(if any, but not inclusive) of delimitingString. If delimitingString is not
	in the stream, answer the entire rest of the stream."

	buffer reset.
	[self atEnd or: [self nextMatchAll: aDelimitingString]]
		whileFalse: [buffer nextPut: self next].
	^ buffer stringContents.