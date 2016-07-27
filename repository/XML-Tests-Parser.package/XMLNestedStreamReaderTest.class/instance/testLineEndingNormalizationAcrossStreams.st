tests
testLineEndingNormalizationAcrossStreams
	| streamReader |

	streamReader := self newStreamReaderOn: (String with: self lf) readStream.
	streamReader pushBackCharacter: self cr.
	self
		assert: streamReader next = self normalizedLineEnding;
		assert: streamReader atEnd.