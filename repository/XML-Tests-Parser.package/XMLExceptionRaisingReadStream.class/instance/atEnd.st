testing
atEnd
	isClosed
		ifTrue: [Error signal: 'Cannot send #atEnd to a closed stream'].
	^ stream atEnd