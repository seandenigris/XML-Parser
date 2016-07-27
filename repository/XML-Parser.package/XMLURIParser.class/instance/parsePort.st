parsing
parsePort
	(uriStream atEnd not
		and: [uriStream peek == $:])
		ifFalse: [^ nil].

	^ XMLIntegerReader
		readFrom:
			(self
				parseUpToAnyNotSkipping: '/?#'
				startingAfter: $:) readStream
		withBase: 10.