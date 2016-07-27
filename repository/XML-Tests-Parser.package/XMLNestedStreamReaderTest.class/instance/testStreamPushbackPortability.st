tests
testStreamPushbackPortability
	| streamReader output lastPeek lastNext |

	streamReader := self newStreamReaderOn: '' readStream.
	self sourceXML reverseDo: [:each |
		streamReader pushBackStream:
			(XMLExceptionRaisingReadStream on: (String with: each))].
	output := String new writeStream.
	self
		shouldnt: [
			self normalizedSourceXML size timesRepeat: [
				output nextPut:
					(streamReader
						peek;
						next)].
			lastPeek := streamReader peek.
			lastNext := streamReader next]
		raise: Error.
	self
		assert: output contents = self normalizedSourceXML;
		assert: lastPeek isNil;
		assert: lastNext isNil;
		assert: streamReader atEnd.