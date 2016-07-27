tests
testPushBackStreamOnClose
	| streamReader closed |

	streamReader := XMLNestedStreamReader on: '' readStream.
	closed := false.
	streamReader
		pushBackStream: self sourceXML readStream
		onClose: [closed := true].
	self normalizedSourceXML do: [:each |
		self
			assert: streamReader peek = each;
			assert: streamReader next = each;
			deny: closed].
	self
		assert: streamReader next isNil;
		assert: closed.