tests
testFromString
	self allURIStringsDo: [:each | | uri |
		uri := XMLURI fromString: each.
		self
			assert: uri class == XMLURI;
			assert: uri uriString = each;
			assert: uri = each asXMLURI]