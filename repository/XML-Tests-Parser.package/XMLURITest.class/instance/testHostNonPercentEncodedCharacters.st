tests
testHostNonPercentEncodedCharacters
	| host uri |

	host := self unreservedCharacters, self subDelimiterCharacters.
	uri := ('http://', host) asXMLURI.
	self
		assert: uri scheme = 'http';
		assert: uri host = host asLowercase.