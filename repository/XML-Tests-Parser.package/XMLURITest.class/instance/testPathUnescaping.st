tests
testPathUnescaping
	| uri |

	uri := (self escaped, self relative, self escaped) asXMLURI.
	self
		assert: uri path = (self escaped, self relative, self escaped);
		assert: uri unescapedPath = (self unescaped, self relative, self unescaped);
		assert: '%' asXMLURI unescapedPath = '%'