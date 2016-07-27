tokenizing
nextPCData

	streamWriter writeWith: [:writeStream |
		self isValidating
			ifTrue: [self nextPCDataDelimitedBy: $< putOn: writeStream]
			ifFalse: [
				[streamReader peek == $<]
					whileFalse: [writeStream nextPut: streamReader next]].

		self handlePCData: writeStream stringContents]