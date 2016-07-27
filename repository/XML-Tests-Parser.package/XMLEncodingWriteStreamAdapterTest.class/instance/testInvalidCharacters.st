tests
testInvalidCharacters
	self decodedInvalidCharacters do: [:each |
		self
			should: [self newStreamAdapter nextPut: each]
			raise: XMLEncodingException]