accessing
peek
	stream atEnd
		ifTrue: [Error signal: 'Cannot call peek on this stream when atEnd'].
	^ stream peek.