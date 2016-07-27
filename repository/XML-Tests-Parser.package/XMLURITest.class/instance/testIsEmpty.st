tests
testIsEmpty
	self
		assert: '' asXMLURI isEmpty;
		deny: '/' asXMLURI isEmpty;
		deny: self relative asXMLURI isEmpty;
		deny: self absolute asXMLURI isEmpty;
		deny: self domain asXMLURI isEmpty;
		deny: self queryString asXMLURI isEmpty;
		deny: self fragment asXMLURI isEmpty