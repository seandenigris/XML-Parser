accessing
nextDecimalInteger
	| digitChar |

	writeBuffer reset.
	[self atEnd not and: [(digitChar := self peek) isDigit]]
		whileTrue: [writeBuffer nextPut: self next].
	^ Integer readFrom: writeBuffer contents readStream.