tests
testStreamReadingPortability
	| streamReader stream lastPeek lastNext |

	stream := XMLExceptionRaisingReadStream on: self sourceXML.
	streamReader := self newStreamReaderOn: stream.
	self
		shouldnt: [
			self normalizedSourceXML size timesRepeat: [
				streamReader
					peek;
					next].
			lastPeek := streamReader peek.
			lastNext := streamReader next]
		raise: Error.
	self
		assert: lastPeek isNil;
		assert: lastNext isNil;
		assert: streamReader atEnd.

	self assert: stream atEnd.
	self should: [stream peek] raise: Error.
	self should: [stream next] raise: Error.