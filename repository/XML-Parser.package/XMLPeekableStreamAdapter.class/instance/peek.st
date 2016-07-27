accessing
peek
	^ peekChar
		ifNil: [
			stream atEnd
				ifFalse: [peekChar := stream next].
			peekChar]