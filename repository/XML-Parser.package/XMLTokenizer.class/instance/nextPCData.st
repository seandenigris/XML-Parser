tokenizing
nextPCData

	buffer reset.
	self isValidating
		ifTrue: [self nextPCDataDelimitedBy: $< putOn: buffer]
		ifFalse: [
			[streamReader peek == $<]
				whileFalse: [buffer nextPut: streamReader next]].

	self handlePCData: buffer stringContents.