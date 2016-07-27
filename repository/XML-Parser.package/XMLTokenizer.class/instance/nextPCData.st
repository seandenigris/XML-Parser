tokenizing
nextPCData

	streamWriter writeWith: [:writeStream |
		driver isValidating
			ifTrue: [self nextPCDataDelimitedBy: $< putOn: writeStream]
			ifFalse: [
				[streamReader peek == $<]
					whileFalse: [writeStream nextPut: streamReader next]].

		driver handlePCData: writeStream stringContents]