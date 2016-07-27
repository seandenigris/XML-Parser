accessing
peek
	^ peekChar
		ifNil: [peekChar := streamConverter nextFromStream: self]