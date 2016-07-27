accessing
nextDecimalInteger
	| digitChar |

	buffer reset.
	[self atEnd not and: [(digitChar := self peek) isDigit]]
		whileTrue: [buffer nextPut: self next].
	^ Integer readFrom: buffer contents readStream.