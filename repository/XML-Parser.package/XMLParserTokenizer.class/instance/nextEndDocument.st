tokenizing
nextEndDocument
	context atEnd
		ifFalse: [
			context enterAtEnd.
			driver handleEndDocument]