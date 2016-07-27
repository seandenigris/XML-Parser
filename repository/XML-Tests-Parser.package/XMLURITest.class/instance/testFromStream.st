tests
testFromStream
	self allURIStringsDo: [:each | | readStream uri |
		readStream := each readStream.
		uri := XMLURI fromStream: readStream.
		self
			assert: uri class == XMLURI;
			assert: readStream atEnd;
			assert: uri = each asXMLURI]