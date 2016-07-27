tokenizing
nextEndDocument
	context atEnd
		ifFalse: [
			streamReader close.
			context enterAtEnd.
			driver handleEndDocument]