tests
testConverting
	| fullUri |

	fullUri := XMLURI fromString: self fullURIString.

	self
		assert: self fullURIString asXMLURI = fullUri;
		assert: fullUri asXMLURI == fullUri.