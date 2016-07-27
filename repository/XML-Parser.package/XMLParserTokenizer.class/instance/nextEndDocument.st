tokenizing
nextEndDocument
	context isTerminatedContext
		ifFalse: [
			streamReader close.
			context := context terminatedContext.
			driver handleEndDocument]