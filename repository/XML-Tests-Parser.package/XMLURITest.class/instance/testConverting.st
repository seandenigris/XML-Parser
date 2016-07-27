tests
testConverting
	| fullURI |

	fullURI := XMLURI fromString: self fullURIString.
	self
		assert: self fullURIString asXMLURI = fullURI;
		assert: fullURI asXMLURI == fullURI.