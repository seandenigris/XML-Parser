tests
testInvalidCharacters
	| streamAdapter |

	streamAdapter :=
		self newStreamAdapterOn:
			self encodedInvalidCharacters readStream.
	[streamAdapter atEnd]
		whileFalse: [
			self
				should: [streamAdapter next]
				raise: XMLEncodingException].
	self assert: streamAdapter atEnd.