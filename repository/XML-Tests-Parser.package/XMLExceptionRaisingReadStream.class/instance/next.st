accessing
next
	stream atEnd
		ifTrue: [Error signal: 'Cannot call next on this stream when atEnd'].
	^ stream next.